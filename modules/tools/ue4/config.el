;;; tools/ue4/config.el -*- lexical-binding: t; -*-

(defun +ue4-uproject-p (dir)
  "Is directory part of UE4 project?"
  (file-expand-wildcards (expand-file-name "*.uproject" dir)))

(def-project-mode! +ue4-mode
  :modes '(cc-mode
           c-mode
           c++-mode
           csharp-mode
           json-mode)
  :when (locate-dominating-file default-directory #'+ue4-uproject-p))

(locate-dominating-file "C:\\Users\\msan\\projects\\Dirk\\Source\\DirkCore\\Private\\Log.h" #'+ue4-uproject-p)
