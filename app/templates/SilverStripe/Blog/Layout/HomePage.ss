<!-- Page Header -->
<header class="masthead" style="background-image: url('{$BannerImage.ScaleWidth(1200).URL}')">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <div class="site-heading">
          <h1>$Title</h1>
          <span class="subheading">$Subheading</span>
        </div>
      </div>
    </div>
  </div>
</header>

<!-- Main Content -->
<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-10 mx-auto">
      <% loop $LatestArticles(3) %>
        <div class="post-preview">
          <a href="$Link">
            <h2 class="post-title">
              $Title
            </h2>
            <h3 class="post-subtitle">
              $Subheading
            </h3>
          </a>
          <p class="post-meta">Posted by {$AuthorName} on {$PublishDate.Long}</p>
        </div>
        <% if not $Last %>
          <hr>
        <% end_if %>
      <% end_loop %>

      <!-- Pager -->
      <% with $Page(articles) %>
        <div class="clearfix">
            <a class="btn btn-primary float-right" href="$Link">Older Posts &rarr;</a>
        </div>
      <% end_with %>
    </div>
  </div>

   <!-- Portfolio Grid -->
 <%-- <div class="bg-light page-section" id="portfolio">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h2 class="section-heading text-uppercase">Portfolio</h2>
        <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4 col-sm-6 portfolio-item">
      <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="images/01-thumbnail.jpg" alt="Card image cap">
        <div class="card-body">
          <span class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</span>
        </div>
      </div>
    </div>
  </div> --%>
</div>