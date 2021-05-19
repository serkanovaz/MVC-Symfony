<?php

namespace App\Controller;

use App\Entity\OrderDetail;
use App\Entity\Orders;
use App\Form\OrdersType;
use App\Repository\OrderDetailRepository;
use App\Repository\OrdersRepository;
use App\Repository\ShopcartRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("home/orders")
 */
class OrdersController extends AbstractController
{
    /**
     * @Route("/", name="orders_index", methods={"GET"})
     */
    public function index(OrdersRepository $ordersRepository): Response
    {
        $user = $this->getUser();
        $orders = $ordersRepository->findBy(['userid'=>$user->getId()]);
        return $this->render('orders/index.html.twig', [
            'orders' => $orders,
        ]);
    }

    /**
     * @Route("/new", name="orders_new", methods={"GET","POST"})
     */
    public function new(Request $request,ShopcartRepository $shopcartRepository): Response
    {
        $order = new Orders();
        $form = $this->createForm(OrdersType::class, $order);
        $form->handleRequest($request);

        $user = $this->getUser();
        $total = $shopcartRepository->totalamount($user->getId());


        if ($form->isSubmitted()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($order);
            $em->flush();
            $orderid = $order->getId();
            $shopcart = $shopcartRepository->shopcartproducts($user->getId());

            foreach($shopcart as $item){

                $orderdetail = new OrderDetail();

                $orderdetail->setOrderid($orderid);
                $orderdetail->setUserid($user->getId());
                $orderdetail->setProductid($item["productid"]);
                $orderdetail->setPrice($item["sprice"]);
                $orderdetail->setQuantity($item["quantity"]);
                $orderdetail->setAmount($item["total"]);
                $orderdetail->setName($item["keywords"]);
                $orderdetail->setStatus("Ordered");

                $em->persist($orderdetail);
                $em->flush();

            }
            $em = $this->getDoctrine()->getManager();
            $query = $em->createQuery('DELETE FROM App\Entity\Shopcart s WHERE s.userid=:id')->setParameter('id',$user->getId());
            $query->execute();

            return $this->redirectToRoute('orders_index');
        }

        return $this->render('orders/new.html.twig', [
            'order' => $order,
            'form' => $form->createView(),
            'total' => $total,
            'user' => $user,
        ]);
    }

    /**
     * @Route("/{id}", name="orders_show", methods={"GET"})
     */
    public function show(Orders $order,OrderDetailRepository $detailRepository): Response
    {
        $details = $detailRepository->findBy(['orderid' => $order->getId() ]);

        return $this->render('orders/show.html.twig', [
            'order' => $order,
            'details' => $details,
        ]);
    }
}
