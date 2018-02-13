(defvar web-head
"<meta name='viewport' content='width=device-width,
initial-scale=1.0'> <meta name='keywords' content='Jonny Evans,
mathematics, geometry, UCL'> <meta name='description'
content='Blog of the UCL-based mathematician Jonny Evans'>
<meta name='author' content='Jonny Evans'> 
<link rel='stylesheet' type='text/css' href='../aux/style.css'/>
<link rel='alternate' type='application/rss+xml' title='RSS feed' />"
)

(defvar web-preamble
"<div class='banner'>
<a href='index.html'>Blog index</a> | <a href='http://www.homepages.ucl.ac.uk/~ucahjde'>Homepage</a> | <a href='blogroll.html'>Blogroll</a> | <a href='rss.xml'>RSS feed</a></div>")

(defvar web-postamble
"<div class='banner'>Comments, corrections and contributions are very welcome; please drop me an email at j.d.evans at ucl.ac.uk if you have something to share.</div><div class='bottomblock'><a class='cc' href='https://creativecommons.org/licenses/by-sa/4.0/legalcode'>CC-BY-SA</a>, Jonny Evans 2017</div>")

(setq org-publish-project-alist
      `(("website"
	 :base-directory "~/blog/org/"
	 :recursive t
	 :section-numbers nil
	 :with-toc nil
	 :exclude "head.org"
	 :html-head ,web-head
	 :html-postamble ,web-postamble
	 :html-preamble ,web-preamble
	 :base-extension "org"
	 :publishing-directory "~/blog/html"
	 :publishing-function org-html-publish-to-html)
	)
      )
