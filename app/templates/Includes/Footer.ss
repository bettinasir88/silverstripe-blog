<hr>

<footer>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">
        <ul class="list-inline text-center">
          <% with SiteConfig %>
            <% if $FacebookURL %>
              <li class="list-inline-item">
                <a href="$FacebookURL">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            <% end_if %>
            <% if $InstagramURL %>
              <li class="list-inline-item">
                <a href="$InstagramURL">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            <% end_if %>
            <% if $PinterestURL %>
              <li class="list-inline-item">
                <a href="$PinterestURL">
                  <span class="fa-stack fa-lg">
                    <i class="fas fa-circle fa-stack-2x"></i>
                    <i class="fab fa-pinterest-p fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
              </li>
            <% end_if %>
          <% end_with %>
        </ul>
        <p class="copyright text-muted">Copyright &copy; Your Website 2019</p>
      </div>
    </div>
  </div>
</footer>