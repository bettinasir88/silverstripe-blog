<% cached 'last_edited', $LastEdited %>
<!-- Page Header -->
<header class="masthead" style="background-image: url('{$BannerImage.ScaleWidth(1200).URL}')">
  <div class="overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-9 col-md-10 mx-auto">
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
      $Content
      <% uncached %>
        $ContactForm
      <% end_uncached %>
    </div>
  </div>
</div>
<% end_cached %>