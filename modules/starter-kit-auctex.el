;;; starter-kit-auctex.el --- Goodies for AUCTeX
;;
;; Copyright (c) 2011 Michael Moorman
;;
;; Author: Michael Moorman <tensorpuddin@devio.us>
;; URL: http://www.emacswiki.org/cgi-bin/wiki/StarterKit
;; Version: 2.0.3
;; Keywords: convenience
;; Package-Requires: ((starter-kit "2.0.3") (go-mode "9846"))

;; This file is not part of GNU Emacs.

;;; Commentary:

;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"

;; This file contains tweaks for AUCTeX

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

;;;###autoload
(eval-after-load 'LaTeX-mode
  '(progn (add-hook 'LaTeX-mode-hook 'esk-local-column-number-mode)
          (add-hook 'LaTeX-mode-hook 'esk-local-comment-auto-fill)
          (add-hook 'LaTeX-mode-hook 'esk-turn-on-save-place-mode)
          (add-hook 'LaTeX-mode-hook 'esk-add-watchwords)
          (add-hook 'LaTeX-mode-hook 'esk-turn-on-idle-highlight-mode)
          (add-hook 'LaTeX-mode-hook 'esk-add-line-numbers)
          (add-hook 'LaTeX-mode-hook 'esk-turn-on-yas)

          (define-key LaTeX-mode-map (kbd "RET") 'reindent-then-newline-and-indent)))

(provide 'starter-kit-auctex)
;;; starter-kit-auctex.el ends here
