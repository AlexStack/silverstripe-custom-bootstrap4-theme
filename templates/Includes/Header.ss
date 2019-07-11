<header class="container ">
    <% include PageTop %>
    <nav class="navbar navbar-expand-lg navbar-light top-nav">
        <a class="navbar-brand" href="/" title="$SiteConfig.Title">
        <% if $SiteConfig.TopLogo %>
            <img src="$SiteConfig.TopLogo.URL" class="top-logo" />
        <% else %>
            <img src="https://via.placeholder.com/250x70/ebf0f5/000000/?text=Top+Logo" class="top-logo" />
        <% end_if %>
        </a>
        <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto ">
                <% loop $Menu(1) %>
                <li class="nav-item $LinkingMode">
                    <a href="$Link" title="$Title.XML" class="nav-link"
                        >$MenuTitle.XML</a
                    >
                </li>
                <% end_loop %>
                
                <% if $CurrentMember %>
                <li class="nav-item dropdown member">
                    <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        id="navbarDropdown"
                        role="button"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                    >
                        Hi, $CurrentMember.FirstName
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a
                            class="dropdown-item"
                            href="/Security/logout?SecurityID=$SecurityID&BackURL=/"
                            ><i class="fas fa-lock  mr-2"></i>Logout
                        </a>

                        <% if $CurrentMember.inGroup(2) %>
                        <a class="dropdown-item" href="/admin"
                            ><i class="fas fa-tools mr-2"></i>Admin Panel</a
                        >
                        <% end_if %>
                    </div>
                </li>
                <% else %>
                <li class="nav-item member">
                    <a href="/Security/login?BackURL=%2F" class="nav-link"
                        >User Login</a
                    >
                </li>
                <% end_if %>
            </ul>
        </div>
    </nav>
    <div class="top-banner text-center" <% if $Top.BannerImage %>
        style="background-image: url($Top.BannerImage.URL);" <% end_if %> >
    </div>
</header>
