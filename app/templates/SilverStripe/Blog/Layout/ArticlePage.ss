<!-- Page Header -->
<header class="masthead" style="background-image: url('{$BannerImage.ScaleWidth(1200).URL}')">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-9 col-md-10 mx-auto">
        <div class="post-heading">
          <h1>$Title</h1>
          <h2 class="subheading">$Subheading</h2>
          <span class="meta">Posted by {$AuthorName} on {$PublishDate.Long}</span>
        </div>
      </div>
    </div>
  </div>
</header>

<!-- Main Content -->
<article>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        $Content
      </div>
    </div>
  </div>
</article>