<?php

namespace SilverStripe\Blog;

use SilverStripe\Blog\ContactSubmission;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\RequiredFields;

use PageController;

class ContactPageController extends PageController
{
    private static $allowed_actions = [
        'ContactForm',
    ];

    public function ContactForm()
    {
        $form = Form::create(
            $this,
            __FUNCTION__,
            FieldList::create(
                TextField::create('Name','')
                    ->setAttribute('placeholder', 'Name')
                    ->addExtraClass('floating-label-form-group controls'),
                EmailField::create('Email','')
                    ->setAttribute('placeholder', 'Email')
                    ->addExtraClass('floating-label-form-group controls'),
                TextareaField::create('Message','')
                    ->setAttribute('placeholder', 'Message')
                    ->addExtraClass('floating-label-form-group controls mt-2')
            ),
            FieldList::create(
                FormAction::create('handleContact','Send!')
                    ->setUseButtonTag(true)
                    ->addExtraClass('btn btn-primary m-3')
            ),
            RequiredFields::create('Name','Email','Message')
        );

        return $form;
    }

    public function handleContact($data, $form)
    {
        $submission = ContactSubmission::create();
        $form->saveInto($submission);
        $submission->write();

        $form->sessionMessage('Thanks for your message','good');

        return $this->redirectBack();
    }
}