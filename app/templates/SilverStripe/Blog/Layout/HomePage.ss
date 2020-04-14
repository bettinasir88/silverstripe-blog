<!-- Page Header -->
<header class="masthead" style="background-image: url('images/home-bg.jpg')">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <div class="site-heading">
          <h1>$Title</h1>
          <span class="subheading">$Content.FirstParagraph</span>
        </div>
      </div>
    </div>
  </div>
</header>

<!-- Main Content -->
<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-10 mx-auto">
      <% loop $Children %>
        <div class="post-preview">
          <a href="$Link">
            <h2 class="post-title">
              $Title
            </h2>
            <h3 class="post-subtitle">
              $Teaser
            </h3>
          </a>
          <p class="post-meta">Posted by {$Author} on {$Created.Nice}</p>
        </div>
        <hr>
      <% end_loop %>
      <!-- Pager -->
      <div class="clearfix">
        <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
      </div>
    </div>
  </div>
   <!-- Portfolio Grid -->
 <!--  <div class="bg-light page-section" id="portfolio">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading text-uppercase">Portfolio</h2>
        <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
      </div>
    </div> -->
  </div>
</div>