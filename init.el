;;; init.el --- Kyle Johnston's emacs configuration
;;; Sources:
;;;   - https://github.com/angrybacon/dotemacs/

;; https://bling.github.io/blog/2016/01/18/why-are-you-changing-gc-cons-threshold/
(let ((gc-cons-threshold most-positive-fixnum))

  ;; Set repositories
  (require 'package)
  (setq-default
   load-prefer-newer t
   package-enable-at-startup nil)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
  (package-initialize)

  ;; Install dependencies
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package t))
  (setq-default use-package-always-ensure t)

  ;; Use latest Org
  (use-package org :ensure org-plus-contrib)

  ;; Tangle configuration
  (org-babel-load-file (expand-file-name "emacs.org" user-emacs-directory))
  (garbage-collect))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f9cae16fd084c64bf0a9de797ef9caedc9ff4d463dd0288c30a3f89ecf36ca7e" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "51956e440cec75ba7e4cff6c79f4f8c884a50b220e78e5e05145386f5b381f7b" "c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "7c4cfa4eb784539d6e09ecc118428cd8125d6aa3053d8e8413f31a7293d43169" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" "3e3a1caddeee4a73789ff10ba90b8394f4cd3f3788892577d7ded188e05d78f4" "4db938d41459251ee398fbc7a6df3e05f21c2b88c06f8adfdf5ae0eab458affa" "a339f231e63aab2a17740e5b3965469e8c0b85eccdfb1f9dbd58a30bdad8562b" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "3577ee091e1d318c49889574a31175970472f6f182a9789f1a3e9e4513641d86" "a83f05e5e2f2538376ea2bfdf9e3cd8b7f7593b16299238c1134c1529503fa88" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "1d50bd38eed63d8de5fcfce37c4bb2f660a02d3dff9cbfd807a309db671ff1af" "285efd6352377e0e3b68c71ab12c43d2b72072f64d436584f9159a58c4ff545a" "229c5cf9c9bd4012be621d271320036c69a14758f70e60385e87880b46d60780" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "d5f8099d98174116cba9912fe2a0c3196a7cd405d12fa6b9375c55fc510988b5" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "7f791f743870983b9bb90c8285e1e0ba1bf1ea6e9c9a02c60335899ba20f3c94" "774aa2e67af37a26625f8b8c86f4557edb0bac5426ae061991a7a1a4b1c7e375" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd" "6231254e74298a1cf8a5fee7ca64352943de4b495e615c449e9bb27e2ccae709" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "6de37d6d573e18138aa948683c8ff0e72b89e90d1cdbf683787ea72f8e6295ab" "845103fcb9b091b0958171653a4413ccfad35552bc39697d448941bcbe5a660d" "6bacece4cf10ea7dd5eae5bfc1019888f0cb62059ff905f37b33eec145a6a430" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "0736a8e34702a67d84e32e2af90145ed19824f661776a0e966cea62aa1943a6e" "d1c7f2db070c96aa674f1d61403b4da1fff2154163e9be76ce51824ed5ca709c" "c520bbbddca1d7362d046635c5cc023b5f151b250ac9f8d6ce763afa804b7d1d" "9743d1941d0559264aa21a542e55043c032d779024cd70468d1123c320699fd1" "1c8171893a9a0ce55cb7706766e57707787962e43330d7b0b6b0754ed5283cda" "fa3bdd59ea708164e7821574822ab82a3c51e262d419df941f26d64d015c90ee" default)))
 '(package-selected-packages
   (quote
    (flymake-shellcheck elpy company-ansible ansible rubocop robe inf-ruby company-graphviz-dot graphviz-dot-mode evil-magit counsel diminish terraform-doc doom-themes org-plus-contrib use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
