# The bootstrap 4 basic theme for SilverStripe
- Bootstrap 4.x CSS, Font Awesome 5.x, JQuery 3.x are included in the Page.ss
- Bootstrap Navbar for menu link included
- Mobile page friendly
- Very easy to custom


# How to install the theme


```bash
composer require alexstack/silverstripe-custom-bootstrap4-theme
``` 

# How to enable the theme in SilverStripe 4.x

Edit your `app/_config/theme.yml` change the 'old-theme' to 'silverstripe-custom-bootstrap4-theme':

```yaml
SilverStripe\View\SSViewer:
  themes:
    - 'silverstripe-custom-bootstrap4-theme'
    - '$default'
```

# Can I custom all the .ss template file?
- Yes, you have 100% control of all the files
- After install, all the .ss template files will be installed at your-ss-project/themes/silverstripe-custom-bootstrap4-theme
- And css/javascript files will copy to your-ss-project/public/_resources/themes/silverstripe-custom-bootstrap4-theme
- You can ignore the css/javascript files in your-ss-project/themes/silverstripe-custom-bootstrap4-theme 

# How to set a footer for every page
- First it will display the PageFooter in SiteConfig(settings)
- Then it will display the content of the URL Segment is "PageFooter" of a page
- Silverstripe template Includes/PageFooter.ss codes are below:
```php
<!-- PageFooter Start -->
<% if $SiteConfig.PageFooter %>
    $SiteConfig.PageFooter
<% else %>
    <% with $Page("PageFooter") %>
        $Content
    <% end_with %>
<% end_if %>
<!-- PageFooter End -->
```

# How to set a page top(above navbar) for every page
- First it will display the PageTop in SiteConfig(settings)
- Then it will display the content of the URL Segment is "PageTop" of a page
- Silverstripe template Includes/PageTop.ss codes are below:
```php
<!-- PageTop Start -->
<% if $SiteConfig.PageTop %>
    $SiteConfig.PageTop
<% else %>
    <% with $Page("PageTop") %>
        $Content
    <% end_with %>
<% end_if %>
<!-- PageTop End -->
```     

# How to set up the navbar menu 
- It will loop $Menu(1) and display links and sub-child links
- Document is here: https://getbootstrap.com/docs/4.1/components/navbar/
- Silverstripe template Includes/Header.ss codes are below:
```php
<% loop $Menu(1) %>
<li class="nav-item <% if $Children %>dropdown<% end_if %> <% if $isCurrent %>active<% end_if %>">
    <% if $Children %>
    <a class="nav-link dropdown-toggle" href="$Link" id="drop{$ID}" role="button" 
    aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" >
        $MenuTitle.XML
        <span class="icon d-none d-lg-inline icon-down-arrow"></span>
        <span class="icon opener d-lg-none icon-down-arrow"></span>
        <span class="sr-only">(current)</span></a>
        <% if $Children %>
        <div class="dropdown-menu" aria-labelledby="drop{$ID}">
        <% loop $Children %>
            <a class="dropdown-item" href="$Link">$MenuTitle.XML</a>
        <% end_loop %>
        </div>
        <% end_if %>
    <% else %>
        <a class="nav-link" href="$Link">$MenuTitle.XML</a>
    <% end_if %>
</li>
<% end_loop %>
``` 


# How to set up the logo for every page (top right)
- It will display the TopLogo in SiteConfig(settings)
- Silverstripe template Includes/Header.ss codes are below:
```php
<% if $SiteConfig.TopLogo %>
    <img src="$SiteConfig.TopLogo.URL" class="top-logo" />
<% else %>
    <img src="https://via.placeholder.com/250x70/ebf0f5/000000/?text=Top+Logo" class="top-logo" />
<% end_if %>
``` 

# How to set up the logo for every page (top right)
- It will display the BannerImage in a page
- Silverstripe template Includes/Header.ss codes are below:
```php
<% if $Top.BannerImage %>
    <div class="text-center top-banner" style="background-image: url($Top.BannerImage.URL);" >
    </div>
<% end_if %>
```


# How to enable the theme in SilverStripe 3.x

 * Download and copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/silverstripe-custom-bootstrap4-theme`.
 
 * Add the following to your `mysite/_config.php` file.  Remove any existing `SSViewer::set_theme` lines.

		SSViewer::set_theme("silverstripe-custom-bootstrap4-theme");
		HtmlEditorConfig::get('cms')->setOption('theme_advanced_styles', 'highlight=highlight;no-border=no-border,break=break');
