<?php

namespace App\Controller;

use App\Entity\Admin\Product;
use App\Entity\Messages;
use App\Entity\User;
use App\Form\MessagesType;
use App\Form\UsersType;
use App\Form\UserType;
use App\Repository\Admin\CategoryRepository;
use App\Repository\Admin\imageRepository;
use App\Repository\Admin\ProductRepository;
use App\Repository\Admin\SettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index(SettingRepository $settingRepository ,CategoryRepository $categoryRepository)
    {

        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM product WHERE status='Aktif' ORDER BY ID DESC LIMIT 5";
        $statement = $em->getConnection()->prepare($sql);
        $statement->execute();
        $sliders  = $statement->fetchAll();

        $sql = "SELECT * FROM product WHERE status='Aktif' ORDER BY ID DESC LIMIT 4";
        $statement = $em->getConnection()->prepare($sql);
        $statement->execute();
        $products  = $statement->fetchAll();

        $data = $settingRepository->findAll();
        $cats=$this->categorytree();
        $cats[0]='<ul id="menu-v">';
        return $this->render('home/index.html.twig', [
            'data' => $data,
            'cats' => $cats,
            'sliders' => $sliders,
            'products' => $products,
        ]);
    }
    /**
     * @Route("/hakkimizda", name="hakkimizda")
     */
    public function hakkimizda(SettingRepository $settingsRepository)
    {
        $data=$settingsRepository->findAll();
        return $this->render('home/hakkimizda.html.twig', [
            'data' => $data,
        ]);
    }
    /**
     * @Route("/referans", name="referans")
     */
    public function referans(SettingRepository $settingsRepository)
    {
        $data=$settingsRepository->findAll();
        return $this->render('home/referans.html.twig', [
            'data' => $data,
        ]);
    }

    /**
     * @Route("/contact", name="contact", methods="GET|POST")
     */
    public function contact(SettingRepository $settingsRepository,Request $request):Response
    {
        $message = new Messages();
        $form = $this->createForm(MessagesType::class,$message);
        $form->handleRequest($request);
        $data=$settingsRepository->findAll();

        if($form->isSubmitted()){

            $em = $this->getDoctrine()->getManager();
            $em->persist($message);
            $em->flush();

        }

        return $this->render('home/contact.html.twig', [
            'data' => $data,
            'form' => $form->createView(),
        ]);
    }
    /**
     * @Route("/emailserver", name="emailserver")
     */
    public function emailserver(SettingRepository $settingsRepository)
    {
        $data=$settingsRepository->findAll();
        return $this->render('home/emailserver.html.twig', [
            'data' => $data,
        ]);
    }



    public function categorytree($parent =0 ,$user_tree_array=''){

        if(!is_array($user_tree_array)){
            $user_tree_array=array();
        }
        $em=$this->getDoctrine()->getManager();
        $sql="SELECT * FROM category WHERE status='Aktif' AND parentid=".$parent;
        $statement=$em->getConnection()->prepare($sql);
        //$statement->bindValue('parentid',$parent);
        $statement->execute();
        $result=$statement->fetchAll();
        //dump($result);
        //die();
        if(count($result) > 0){
            $user_tree_array[]="<ul>";
            foreach ($result as $row){
                $user_tree_array[]="<li> <a href='/category/".$row['id']."'>".$row['title']."</a>";
                $user_tree_array=$this->categorytree($row['id'],$user_tree_array);
            }
            $user_tree_array[]="</li></ul>";
        }
        return $user_tree_array;
    }



    /**
     * @Route("/product/{id}", name="product_detail", methods="GET")
     */
    public function productdetail($id,Product $product, SettingRepository $settingRepository, ProductRepository $productRepository,imageRepository $imageRepository)
    {

        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM product WHERE status='Aktif' ORDER BY ID DESC LIMIT 5";
        $statement = $em->getConnection()->prepare($sql);
        $statement->execute();
        $sliders  = $statement->fetchAll();
        $data2=$productRepository->findBy(
            ['id'=>$id]
        );

        $data = $settingRepository->findAll();
        $cats=$this->categorytree();
        $cats[0]='<ul id="menu-v">';
        $images = $imageRepository->findBy(['product_id'=> $id]);
        return $this->render('home/product_detail.html.twig', [
            'data' => $data,
            'product' =>$product,
            'cats' =>$cats,
            'sliders' =>$sliders,
            'images'=>$images,
            'data2'=>$data2,
        ]);

    }

    /**
     * @Route("/category/{catid}", name="category_products", methods="GET")
     */
    public function CategoryProducts($catid,CategoryRepository $categoryRepository)
    {

        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM product WHERE status='Aktif' ORDER BY ID DESC LIMIT 5";
        $statement = $em->getConnection()->prepare($sql);
        $statement->execute();
        $sliders  = $statement->fetchAll();

        $cats=$this->categorytree();
        $cats[0]='<ul id="menu-v">';

        $data=$categoryRepository->findBy(
            ['id'=>$catid]
        );
        $em=$this->getDoctrine()->getManager();
        $sql="SELECT * FROM product WHERE status='Aktif' AND category_id=".$catid;
        $statement=$em->getConnection()->prepare($sql);
        $statement->bindValue('catid',$catid);
        $statement->execute();
        $products=$statement->fetchAll();
//        dump($products);
//         die();



        return $this->render('home/products.html.twig', [
            'data' => $data,
            'products' =>$products,
            'cats' =>$cats,
            'sliders' => $sliders,
        ]);

    }


    /**
     * @Route("/user/new", name="home_user_new", methods="GET|POST")
     */
    public function newuser(Request $request):Response
    {
        $user = new User();
        $form = $this->createForm(UserType::class,$user);
        $form->handleRequest($request);

        $submittedToken = $request->request->get('token');
        if ($this->isCsrfTokenValid('user-form', $submittedToken)) {
            if ($form->isSubmitted()) {
                $user->setRoles(array("ROLE_USER"));
                $user->setStatus("Aktif");
                $em = $this->getDoctrine()->getManager();
                $em->persist($user);
                $em->flush();
                return $this->redirectToRoute('app_login', []);
            }
        }


        return $this->render('home/kayitol.html.twig', [

        ]);

    }

    /**
     * @Route("/user/{id}", name="home_user_show", methods="GET")
     */
    public function usershow(User $user)
    {
        return $this->render('home/account/index.html.twig', [
            'user'=> $user,
        ]);
    }

    /**
     * @Route("/user/edit/{id}", name="home_user_edit", methods="GET|POST")
     */
    public function useredit(User $user,Request $request):Response
    {

        $form = $this->createForm(UserType::class,$user);
        $form->handleRequest($request);

        $submittedToken = $request->request->get('token');
        if ($this->isCsrfTokenValid('useredit-form', $submittedToken)) {
            if ($form->isSubmitted()) {
                $user->setRoles(array("ROLE_USER"));
                $user->setStatus("Aktif");
                $this->getDoctrine()->getManager()->flush();
                return $this->redirectToRoute('home_user_show', ['id'=>$user->getId()]);
            }
        }

        return $this->render('home/account/edit.html.twig', [
            'user'=> $user,
        ]);
    }

}
