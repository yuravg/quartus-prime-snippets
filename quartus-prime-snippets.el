;;; quartus-prime-snippets.el --- A collection of Quartus Prime Standard(QPS) and Professional(QPP) snippets

;; Author: Yuriy Gritsenko
;; Version: 20210126.1451
;; Package-Requires: (yasnippet)
;; Homepage: https://github.com/yuravg/quartus-prime-snippets

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'yasnippet)

(defconst quartus-standard-snippets-dir
  (expand-file-name
   "qps/snippets"
   (file-name-directory (or load-file-name (buffer-file-name)))))

(defconst quartus-professional-snippets-dir
  (expand-file-name
   "qpp/snippets"
   (file-name-directory (or load-file-name (buffer-file-name)))))

;; NOTE: `quartus-prime-snippets' package has too many snippets,
;; it is useful to load snippets only if they are necessary.
;; Commands to enable snippets:
;; `quartus-standard-snippets-enable', `quartus-professional-snippets-enable'
;; Commands to disable snippets:
;; `quartus-standard-snippets-disable', `quartus-professional-snippets-disable'
(defun quartus-standard-snippets-enable ()
  "Enable Quartus Prime Standard snippets."
  (interactive)
  (add-to-list 'yas-snippet-dirs 'quartus-standard-snippets-dir t)
  (yas-load-directory quartus-standard-snippets-dir t)
  (message "QP Standard snippets enabled."))

(defun quartus-standard-snippets-disable ()
  "Disable Quartus Prime Standard snippets."
  (interactive)
  (setq yas-snippet-dirs (delq 'quartus-standard-snippets-dir yas-snippet-dirs))
  (yas-global-mode 1)
  (message "QP Standard snippets disabled."))

(defun quartus-professional-snippets-enable ()
  "Enable Quartus Prime Professional snippets."
  (interactive)
  (add-to-list 'yas-snippet-dirs 'quartus-professional-snippets-dir t)
  (yas-load-directory quartus-professional-snippets-dir t)
  (message "QP Professional snippets enabled."))

(defun quartus-professional-snippets-disable ()
  "Disable Quartus Prime Professional snippets."
  (interactive)
  (setq yas-snippet-dirs (delq 'quartus-professional-snippets-dir yas-snippet-dirs))
  (yas-global-mode 1)
  (message "QP Professional snippets disabled."))

;; NOTE: uncomment below auto-load section if required
;; ;;;###autoload
;; (defun quartus-standard-snippets-enable ()
;;   (add-to-list 'yas-snippet-dirs 'quartus-standard-snippets-dir t)
;;   (yas-load-directory quartus-standard-snippets-dir t))

;; ;;;###autoload
;; (defun quartus-professional-snippets-enable ()
;;   (add-to-list 'yas-snippet-dirs 'quartus-professional-snippets-dir t)
;;   (yas-load-directory quartus-professional-snippets-dir t))

;; ;;;###autoload
;; (eval-after-load 'yasnippet
;;   '(quartus-standard-snippets-enable))

;; ;;;###autoload
;; (eval-after-load 'yasnippet
;;   '(quartus-professional-snippets-enable))

(provide 'quartus-prime-snippets)

;; This is for the sake of Emacs.
;; Local Variables:
;; no-byte-compile: t
;; time-stamp-end: "$"
;; time-stamp-format: "%:y%02m%02d.%02H%02M"
;; time-stamp-start: "Version: "
;; End:

;;; quartus-prime-snippets.el ends here
