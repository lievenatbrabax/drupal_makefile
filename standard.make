; $Id$
;
; Example makefile
; ----------------
; This is an example makefile to introduce new users of drush_make to the
; syntax and options available to drush_make. For a full description of all
; options available, see README.txt.

; This make file is a working makefile - try it! Any line starting with a `;`
; is a comment.

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare it's Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

; Use pressflow instead of Drupal core:
; projects[pressflow][type] = "core"
; projects[pressflow][download][type] = "file"
; projects[pressflow][download][url] = "http://launchpad.net/pressflow/6.x/6.15.73/+download/pressflow-6.15.73.tar.gz"

; CVS checkout of Drupal 6.x core:
; projects[drupal][type] = "core"
; projects[drupal][download][type] = "cvs"
; projects[drupal][download][root] = ":pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal"
; projects[drupal][download][revision] = "DRUPAL-6"
; projects[drupal][download][module] = "drupal"

; CVS checkout of Drupal 7.x. Requires the `core` property to be set to 7.x.
; projects[drupal][type] = "core"
; projects[drupal][download][type] = "cvs"
; projects[drupal][download][root] = ":pserver:anonymous:anonymous@cvs.drupal.org:/cvs/drupal"
; projects[drupal][download][revision] = "HEAD"
; projects[drupal][download][module] = "drupal"

projects[] = drupal

; Projects
; --------
; Each project that you would like to include in the makefile should be
; declared under the `projects` key. The simplest declaration of a project
; looks like this:

; To include the most recent views module:

projects[] = admin_views
projects[] = auto_nodetitle
projects[] = ctools
projects[] = date
projects[] = entity
projects[] = entity_view_mode
projects[] = features
projects[] = feeds
projects[] = feeds_tamper
projects[] = feeds_xpathparser
projects[] = field_group
projects[] = file_entity
projects[] = google_analytics
projects[] = insert
projects[] = job_scheduler
projects[] = l10n_update
projects[] = libraries
projects[] = nodeconnect
projects[] = pathauto
projects[] = print
projects[] = references
projects[] = secureshare
projects[] = tagclouds
projects[] = taxonomy_csv
projects[] = token
projects[] = transliteration
projects[] = views
projects[] = views_bulk_operations
projects[] = views_data_export
projects[] = views_datasource
projects[] = workbench
projects[] = workbench_media
projects[] = wysiwyg

projects[media][version] = 2.x
projects[] = media_youtube

; CKEditor
libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

; Secureshare	
libraries[socialshareprivacy][download][type]= "get"
libraries[socialshareprivacy][download][url] = "http://www.heise.de/extras/socialshareprivacy/jquery.socialshareprivacy.zip"
libraries[socialshareprivacy][directory_name] = "socialshareprivacy"
libraries[socialshareprivacy][destination] = "libraries"




; This will, by default, retrieve the latest recommended version of the project
; using its update XML feed on Drupal.org. If any of those defaults are not
; desirable for a project, you will want to use the keyed syntax combined with
; some options.

; If you want to retrieve a specific version of a project:

; projects[cck] = 2.6

; Or an alternative, extended syntax:

; projects[ctools][version] = 1.3

; Check out the latest version of a project from CVS. Note that when using a
; repository as your project source, you must explictly declare the project
; type so that drush_make knows where to put your project.

; projects[data][type] = module
; projects[data][download][type] = cvs
; projects[data][download][module] = contributions/modules/data
; projects[data][download][revision] = DRUPAL-6--1

; Clone a project from github.

projects[mysite][type] = theme
projects[mysite][download][type] = git
projects[mysite][download][url] = git://github.com/lievenatbrabax/drupal_subtheme.git

projects[basis][type] = "profile"
projects[basis][download][type] = "git"
projects[basis][download][url] = "https://github.com/lievenatbrabax/install_profile.git"

; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.

; projects[admin_menu][subdir] = custom

; To apply a patch to a project, use the `patch` attribute and pass in the URL
; of the patch.

; projects[admin_menu][patch][] = "http://drupal.org/files/issues/admin_menu.long_.31.patch"

