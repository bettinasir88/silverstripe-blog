<?php

namespace SilverStripe\Blog;

use SilverStripe\Blog\ArticlePage;
use Page;

class ArticleHolder extends Page
{
    private static $allowed_children = [
        ArticlePage::class
    ];
}