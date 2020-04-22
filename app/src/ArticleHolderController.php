<?php

namespace SilverStripe\Blog;

use SilverStripe\Blog\ArticlePage;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\FormAction;
use SilverStripe\ORM\PaginatedList;

use PageController;

class ArticleHolderController extends PageController
{
    public function index(HTTPRequest $request)
    {
        $articles = ArticlePage::get();

        if ($search = $request->getVar('search')) {
            $articles = $articles->filterAny([
                'Title:PartialMatch' => $search,
                'Subheading:PartialMatch' => $search
            ]);
        }

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

    public function SearchForm()
    {
        $form = Form::create(
            $this,
            __FUNCTION__,
            FieldList::create(
                TextField::create('search', '')
                    ->addExtraClass('floating-label-form-group controls mr-3')
            ),
            FieldList::create(
                FormAction::create('doSearch','Search')
                    ->setUseButtonTag(true)
                    ->addExtraClass('btn btn-primary my-2 my-sm-0')
            )
        )->addExtraClass('form-inline justify-content-end mb-5');

        $form->setFormMethod('GET')
             ->setFormAction($this->Link())
             ->disableSecurityToken()
             ->loadDataFrom($this->request->getVars());

        return $form;
    }
}