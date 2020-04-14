<?php

namespace SilverStripe\Blog;

use SilverStripe\Blog\ArticlePage;
use Page;

class HomePage extends Page 
{
	private static $allowed_children = [
      ArticlePage::class
    ];
}