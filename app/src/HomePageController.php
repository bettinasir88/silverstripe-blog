<?php

namespace SilverStripe\Blog;

use SilverStripe\Blog\ArticlePage;

use PageController;

class HomePageController extends PageController 
{
    public function LatestArticles($count = 3) 
    { 
        return ArticlePage::get()
                   ->sort('PublishDate', 'DESC')
                   ->limit($count);
    } 
}