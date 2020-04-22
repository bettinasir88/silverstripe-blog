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

      $SearchForm

      <% loop $Results %>
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

      <% if not $Results %>
        <p>Oops, no results. Try a different search term</p>
      <% end_if %>

      <!-- Pager -->
      <% if $Results.MoreThanOnePage %>
        <div class="clearfix">
          <nav aria-label="Article pagination">
            <ul class="pagination justify-content-center">
              <% if $Results.NotFirstPage %>
                <li class="page-item">
                  <a class="page-link" href="$Results.PrevLink" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
              <% end_if %>
              <% loop $Results.Pages %>
                <li class="page-item <% if $CurrentBool %>active<% end_if %>">
                  <a class="page-link" href="$Link">$PageNum</a>
                </li>
              <% end_loop %>
              <% if $Results.NotLastPage %>
                <li class="page-item">
                  <a class="page-link" href="$Results.NextLink" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              <% end_if %>
            </ul>
          </nav>
        </div>
      <% end_if %>
    </div>
  </div>
</div>