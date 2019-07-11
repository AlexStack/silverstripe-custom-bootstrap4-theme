<div class="row page-top">
    <div class="col text-right page-top-content">
        <!-- PageTop Start -->
        <% if $SiteConfig.PageTop %>
            $SiteConfig.PageTop
        <% else %>
            <% with $Page("PageTop") %>
                $Content
            <% end_with %>
        <% end_if %>
        <!-- PageTop End -->
    </div>
</div>
