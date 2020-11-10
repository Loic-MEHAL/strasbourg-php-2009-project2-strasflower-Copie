<?php

/**
 * Created by PhpStorm.
 * User: root
 * Date: 11/10/17
 * Time: 16:07
 * PHP version 7
 */

namespace App\Controller;

use App\Model\ArticlesManager;

/**
 * Class ArticlesController
 *
 */
class ArticlesController extends AbstractController
{


    /**
     * Display Articles listing
     *
     * @return string
     * @throws \Twig\Error\LoaderError
     * @throws \Twig\Error\RuntimeError
     * @throws \Twig\Error\SyntaxError
     */
    public function showArticles()
    {
        $articlesManager = new ArticlesManager();
        $articles = $articlesManager->selectAll();
        

        return $this->twig->render('Articles/articlesList.html.twig', ['articles' => $articles]);
    }
}
