<?php

namespace SilverStripe\Blog;

use SilverStripe\Blog\ArticlePage;
use SilverStripe\Control\HTTPRequest;

use PageController;

class HomePageController extends PageController 
{
    public function index(HTTPRequest $request)
    {
        $LatestArticles = ArticlePage::get()
           ->sort('PublishDate', 'DESC')
           ->limit(3);

        return [
            'LatestArticles' => $LatestArticles
        ];
    }
}