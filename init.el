;; COMMENT THIS OUT IF YOU'RE USING A DIFFERENT CONFIG DIRECTORY
(setq user-emacs-directory (expand-file-name "~/.config/emacs/"))

(defvar jelly/org-files
      '("core.org" "binds.org" "magit.org" "code.org" "completion.org" "aesthetics.org")
			"This is a list of all my [config].org files.")

(defvar jelly/org-files-directory (expand-file-name "jelly/" user-emacs-directory)
			"This is the directory in which all my [config].org files are stored.")

(defun jelly/reload ()
	"Reloads emacs configuration"
	(interactive)
(dolist (file jelly/org-files)
  (org-babel-load-file
   (expand-file-name file jelly/org-files-directory))))

;; first call to set everything up
(jelly/reload)

(require 'org)
(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("9b6d6a7c309c001f9586a22040f9451e9c1e745cb153b16a815b60c10ef57aef" default))
 '(package-selected-packages nil)
 '(package-vc-selected-packages
   '((creamsody-theme :url "https://github.com/emacsfodder/emacs-theme-creamsody"
		      :branch "main"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
