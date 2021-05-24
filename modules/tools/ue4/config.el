;;; tools/ue4/config.el -*- lexical-binding: t; -*-

(defun +ue4-expand-uproject-name (dir)
  "Expand *.uproject file name in DIR.

Returns it's absolute, canonnicalized form."
  (file-expand-wildcards (expand-file-name "*.uproject" dir)))

(def-project-mode! +ue4-mode
  :modes '(cc-mode
           c-mode
           c++-mode
           csharp-mode
           json-mode)
  :when (locate-dominating-file default-directory #'+ue4-expand-uproject-name))
