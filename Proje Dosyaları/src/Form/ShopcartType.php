<?php

namespace App\Form;

use App\Entity\Shopcart;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ShopcartType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('userid')
            ->add('productid')
            ->add('quantity')
            ->add('created_at')
            ->add('update_at')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Shopcart::class,
            'csrf_protection' => false,
        ]);
    }
}
