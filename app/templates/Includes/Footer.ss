<hr>

<footer>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <ul class="footer-links list-inline text-center">
          <% with SiteConfig %>
            <% if $EtsyURL %>
              <li class="list-inline-item">
                <a href="$EtsyURL" target="_blank">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-etsy fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            <% end_if %>
            <% if $InstagramURL %>
              <li class="list-inline-item">
                <a href="$InstagramURL" target="_blank">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            <% end_if %>
            <% if $PinterestURL %>
              <li class="list-inline-item">
                <a href="$PinterestURL" target="_blank">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-pinterest-p fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            <% end_if %>
          <% end_with %>
        </ul>
        <p class="copyright text-muted">
          <span>{$SiteConfig.Title} {$ThisYear}</span>
          <% if $SiteConfig.EtsyURL %>
            <br><span class="copyright text-muted">Visit our <a href="$SiteConfig.EtsyURL" target="_blank">Online Shop</a> on Etsy</span>
          <% end_if %>
        </p>
      </div>
    </div>
  </div>
</footer>