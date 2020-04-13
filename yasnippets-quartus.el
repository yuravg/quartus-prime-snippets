;;; yasnippets-quartus.el --- Yasnippets for Quartus Prime Standard(QPS) and Professional(QPP)

;; Author: Yuriy Gritsenko
;; Version: 20200413.1441
;; Package-Requires: (yasnippet)
;; Homepage: https://github.com/yuravg/yasnippets-quartus

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

(defconst yasnippets-quartus-standard-dir
  (expand-file-name
   "qps/snippets"
   (file-name-directory (or load-file-name (buffer-file-name)))))

(defconst yasnippets-quartus-professional-dir
  (expand-file-name
   "qpp/snippets"
   (file-name-directory (or load-file-name (buffer-file-name)))))

;; NOTE: `yasnippets-quartus' package has too many snippets,
;; it is useful to load snippets only if they are necessary.
;; Commands to enable snippets:
;; `yasnippets-quartus-standard-enable', `yasnippets-quartus-professional-enable'
;; Commands to disable snippets:
;; `yasnippets-quartus-standard-disable', `yasnippets-quartus-professional-disable'
(defun yasnippets-quartus-standard-enable ()
  "Enable Quartus Standard snippets."
  (interactive)
  (add-to-list 'yas-snippet-dirs 'yasnippets-quartus-standard-dir t)
  (yas-load-directory yasnippets-quartus-standard-dir t)
  (message "QP Standard snippets enabled."))

(defun yasnippets-quartus-standard-disable ()
  "Disable Quartus Standard snippets."
  (interactive)
  (setq yas-snippet-dirs (delq 'yasnippets-quartus-standard-dir yas-snippet-dirs))
  (yas-global-mode 1)
  (message "QP Standard snippets disabled."))

(defun yasnippets-quartus-professional-enable ()
  "Enable Quartus Professional snippets."
  (interactive)
  (add-to-list 'yas-snippet-dirs 'yasnippets-quartus-professional-dir t)
  (yas-load-directory yasnippets-quartus-professional-dir t)
  (message "QP Professional snippets enabled."))

(defun yasnippets-quartus-professional-disable ()
  "Disable Quartus Professional snippets."
  (interactive)
  (setq yas-snippet-dirs (delq 'yasnippets-quartus-professional-dir yas-snippet-dirs))
  (yas-global-mode 1)
  (message "QP Professional snippets disabled."))

;; NOTE: uncomment below auto-load section if required
;;;###autoload
;; (defun yasnippets-quartus-standard-enable ()
;;   (add-to-list 'yas-snippet-dirs 'yasnippets-quartus-standard-dir t)
;;   (yas-load-directory yasnippets-quartus-standard-dir t))

;;;###autoload
;; (defun yasnippets-quartus-professional-enable ()
;;   (add-to-list 'yas-snippet-dirs 'yasnippets-quartus-professional-dir t)
;;   (yas-load-directory yasnippets-quartus-professional-dir t))

;;;###autoload
;; (eval-after-load 'yasnippet
;;   '(yasnippets-quartus-standard-enable))

;;;###autoload
;; (eval-after-load 'yasnippet
;;   '(yasnippets-quartus-professional-enable))

(provide 'yasnippets-quartus)

;; This is for the sake of Emacs.
;; Local Variables:
;; no-byte-compile: t
;; time-stamp-end: "$"
;; time-stamp-format: "%:y%02m%02d.%02H%02M"
;; time-stamp-start: "Version: "
;; End:

;;; yasnippets-quartus.el ends here
