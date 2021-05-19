<?php

namespace App\Controller;

use App\Entity\Shopcart;
use App\Form\ShopcartType;
use App\Repository\ShopcartRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("home/shopcart")
 */
class ShopcartController extends AbstractController
{
    /**
     * @Route("/", name="shopcart_index", methods={"GET"})
     */
    public function index(ShopcartRepository $shopcartRepository): Response
    {

        $user = $this->getUser(); // Kullanıcı bilgilerini alma
        $shopcart =  $shopcartRepository->shopcartproducts($user->getId());
        $total = $shopcartRepository->totalamount($user->getId());
        return $this->render('home/shopcart/index.html.twig', [
            'shopcart' => $shopcart,
            'total' => $total,
        ]);
    }

    /**
     * @Route("/new", name="shopcart_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $shopcart = new Shopcart();
        $form = $this->createForm(ShopcartType::class, $shopcart);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($shopcart);
            $entityManager->flush();
            return $this->redirectToRoute('shopcart_index');
        }

        return $this->render('home/shopcart/new.html.twig', [
            'shopcart' => $shopcart,
            'form' => $form->createView(),
        ]);
    }


    /**
     * @Route("/{id}", name="shopcart_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Shopcart $shopcart): Response
    {
        if ($this->isCsrfTokenValid('delete'.$shopcart->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($shopcart);
            $entityManager->flush();
        }

        return $this->redirectToRoute('shopcart_index');
    }
}
