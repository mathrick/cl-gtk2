(in-package :gtk)

(defcfun (container-add "gtk_container_add") :void
  (container (g-object container))
  (widget (g-object widget)))

(export 'container-add)

(defcfun (container-remove "gtk_container_remove") :void
  (container (g-object container))
  (widget (g-object widget)))

(export 'container-remove)

(defcfun (container-check-resize "gtk_container_check_resize") :void
  (container g-object))

(export 'container-check-resize)

(defcallback gtk-container-foreach-callback :void
    ((widget g-object) (data :pointer))
  (restart-case
      (funcall (get-stable-pointer-value data)
               widget)
    (return () nil)))

(defcfun gtk-container-foreach :void
  (container g-object)
  (callback :pointer)
  (data :pointer))

(defun map-container-children (container function)
  (with-stable-pointer (ptr function)
    (gtk-container-foreach container (callback gtk-container-foreach-callback) ptr)))

(export 'map-container-children)

(defcfun gtk-container-forall :void
  (container g-object)
  (callback :pointer)
  (data :pointer))

(defun map-container-internal-children (container function)
  (with-stable-pointer (ptr function)
    (gtk-container-forall container (callback gtk-container-foreach-callback) ptr)))

(export 'map-container-internal-children)

(defcfun (container-children "gtk_container_get_children") (glist g-object :free-from-foreign t)
  (container g-object))

; TODO: ownership issues

(export 'container-children)

; TODO: gtk_container_set_reallocate_redraws

(defcfun (container-resize-children "gtk_container_resize_children") :void
  (container g-object))

(export 'container-resize-children)

(defcfun gtk-container-child-type g-type
  (container g-object))

; TODO: export gtk-container-child-type, requires better interface

; TODO: child properties

; TODO: gtk_container_propagate_expose

; TODO: gtk_container_get_focus_chain

; TODO: gtk_container_set_focus_chain

; TODO: gtk_container_unset_focus_chain
