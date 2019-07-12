
<div class="container main-content">
    <div class="row justify-content-sm-center justify-content-center">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <% if $MenuTitle != 'Home Page' && $MenuTitle != 'Home'%>
            <div class="text-center main-title">
                <h2>$Title</h2>
            </div>
            <% end_if %>
            <div class="main-content">$Content</div>
            <div class="main-form">
                $Form
                $CommentsForm
            </div>

        </div>

    </div>
</div>
