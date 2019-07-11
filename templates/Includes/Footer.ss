<footer class="container page-footer">
    <div class="row justify-content-sm-center justify-content-center footer">
            <div class="col footer-content">
            <!-- PageFooter Start -->
            <% if $SiteConfig.PageFooter %>
                $SiteConfig.PageFooter
            <% else %>
                <% with $Page("PageFooter") %>
                    $Content
                <% end_with %>
            <% end_if %>
            <!-- PageFooter End -->
        </div>
    </div>
</footer>
