(in-package #:iup-glcontrols-cffi)

(define-foreign-library iupglcontrols
  (:unix "libiupglcontrols.so")
  (t (:default "iupglcontrols")))

(use-foreign-library iupglcontrols)

(defcfun (%iup-glcontrols-open "IupGLControlsOpen") :int)

(defcfun (%iup-glcontrols-canvas-box "IupCanvasBoxv") iup-cffi::ihandle
  (children :pointer))

(defcfun (%iup-glcontrols-sub-canvas "IupGLSubCanvas") iup-cffi::ihandle)
(defcfun (%iup-glcontrols-separator "IupGLSeparator") iup-cffi::ihandle)
(defcfun (%iup-glcontrols-progress-bar "IupGLProgressBar") iup-cffi::ihandle)
(defcfun (%iup-glcontrols-val "IupGLProgressVal") iup-cffi::ihandle)
(defcfun (%iup-glcontrols-text "IupGLText") iup-cffi::ihandle)

(defcfun (%iup-glcontrols-label "IupGLLabel") iup-cffi::ihandle
  (title :string))

(defcfun (%iup-glcontrols-button "IupGLButton") iup-cffi::ihandle
  (title :string))

(defcfun (%iup-glcontrols-toggle "IupGLToggle") iup-cffi::ihandle
  (title :string))

(defcfun (%iup-glcontrols-link "IupGLLink") iup-cffi::ihandle
  (url :string)
  (title :string))

(defcfun (%iup-glcontrols-frame "IupGLFrame") iup-cffi::ihandle (child iup-cffi::ihandle))
(defcfun (%iup-glcontrols-expander "IupGLExpander") iup-cffi::ihandle (child iup-cffi::ihandle))
(defcfun (%iup-glcontrols-scroll-bar "IupGLScrollBar") iup-cffi::ihandle (child iup-cffi::ihandle))
(defcfun (%iup-glcontrols-size-box "IupGLSizeBox") iup-cffi::ihandle (child iup-cffi::ihandle))


(defcfun (%iup-glcontrols-draw-image "IupGLDrawImage") :void
  (child iup-cffi::ihandle)
  (name :string)
  (x :int)
  (y :int)
  (active :int))

(defcfun (%iup-glcontrols-draw-text "IupGLDrawText") :void
  (child iup-cffi::ihandle))

(defcfun (%iup-glcontrols-draw-image "IupGLDrawImage") :void
  (child iup-cffi::ihandle))
(defcfun (%iup-glcontrols-draw-image "IupGLDrawImage") :void
  (child iup-cffi::ihandle))
;; void IupGLDrawImage(Ihandle* ih, const char* name, int x, int y, int active);
;; void IupGLDrawText(Ihandle* ih, const char* str, int len, int x, int y);
;; void IupGLDrawGetTextSize(Ihandle* ih, const char* str, int *w, int *h);
;; void IupGLDrawGetImageInfo(const char* name, int *w, int *h, int *bpp);