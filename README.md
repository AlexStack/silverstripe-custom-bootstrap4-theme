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

# How to enable the theme in SilverStripe 3.x

 * Download and copy the theme into the `themes/` directory of your SilverStripe project.  If you've named it correctly, there should be a directory called `themes/silverstripe-custom-bootstrap4-theme`.
 
 * Add the following to your `mysite/_config.php` file.  Remove any existing `SSViewer::set_theme` lines.

		SSViewer::set_theme("silverstripe-custom-bootstrap4-theme");
		HtmlEditorConfig::get('cms')->setOption('theme_advanced_styles', 'highlight=highlight;no-border=no-border,break=break');
