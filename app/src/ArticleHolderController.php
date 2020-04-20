<?php

namespace SilverStripe\Blog;

use SilverStripe\Blog\ArticlePage;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\PaginatedList;

use PageController;

class ArticleHolderController extends PageController
{
    public function index(HTTPRequest $request)
    {
        $articles = ArticlePage::get();

        $paginatedArticles = PaginatedList::create(
            $articles,
            $request
        )
            ->setPageLength(3)
            ->setPaginationGetVar('s');

        return [
            'Results' => $paginatedArticles
        ];
    }
}