;;; starter-kit-go.el --- Contributed code to integrate go-mode
;;
;; Part of the Emacs Starter Kit

;;;###autoload
(eval-after-load 'go-mode
  '(progn (add-hook 'go-mode-hook 'esk-local-column-number-mode)
          (add-hook 'go-mode-hook 'esk-local-comment-auto-fill)
          (add-hook 'go-mode-hook 'esk-turn-on-save-place-mode)
          (add-hook 'go-mode-hook 'esk-add-watchwords)
          (add-hook 'go-mode-hook 'esk-turn-on-idle-highlight-mode)
          (add-hook 'go-mode-hook 'esk-add-line-numbers)

          (define-key go-mode-map (kbd "RET") 'reindent-then-newline-and-indent)))

(provide 'starter-kit-go)
