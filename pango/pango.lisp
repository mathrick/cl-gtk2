(in-package :pango)

(define-g-enum "PangoWrapMode" pango-wrap-mode
    (:export t :type-initializer
             "pango_wrap_mode_get_type")
  (:word 0) (:char 1) (:word-char 2))

(export 'pango-wrap-mode)

(define-g-enum "PangoEllipsizeMode" pango-ellipsize-mode
    (:export t :type-initializer
             "pango_ellipsize_mode_get_type")
  (:none 0) (:start 1) (:middle 2) (:end 3))

(export 'pango-ellipsize-mode)

(define-g-object-class "PangoLayout" pango-layout (:type-initializer "pango_layout_get_type") ())

(export 'pango-layout)

(define-g-enum "PangoUnderline" pango-underline (:export t :type-initializer "pango_underline_get_type")
  (:none 0)
  (:single 1)
  (:double 2)
  (:low 3)
  (:error 4))

(export 'pango-underline)

(define-g-enum "PangoDirection"
    pango-direction
    (:export t :type-initializer "pango_direction_get_type")
  (:ltr 0)
  (:rtl 1)
  (:ttb-ltr 2)
  (:ttb-rtl 3)
  (:weak-ltr 4)
  (:weak-rtl 5)
  (:neutral 6))

(define-g-object-class "PangoRenderer" pango-renderer
  (:superclass g-object :export t :interfaces
               nil :type-initializer
               "pango_renderer_get_type")
  nil)

(define-g-object-class "PangoContext" pango-context
  (:superclass g-object :export t :interfaces
               nil :type-initializer
               "pango_context_get_type")
  nil)

(define-g-enum "PangoRenderPart"
    pango-render-part
    (:export t :type-initializer "pango_render_part_get_type")
  (:foreground 0)
  (:background 1)
  (:underline 2)
  (:strikethrough 3))

(define-g-boxed-opaque pango-layout-line "PangoLayoutLine"
  :alloc (error "Use Pango to create PANGO-LAYOUT-LINEs"))

(export (boxed-related-symbols 'pango-layout-line))

(define-g-enum "PangoRenderPart"
    pango-render-part
    (:export t :type-initializer "pango_render_part_get_type")
  (:foreground 0)
  (:background 1)
  (:underline 2)
  (:strikethrough 3))

(defcfun pango_glyph_string_new :pointer)

(define-g-boxed-opaque pango-glyph-string "PangoGlyphString"
  :alloc (pango_glyph_string_new))

(export (boxed-related-symbols 'pango-glyph-string))

(define-g-object-class "PangoFont" pango-font
  (:superclass g-object :export t :interfaces
               nil :type-initializer
               "pango_font_get_type")
  nil)

(define-g-enum "PangoStyle" pango-style
    (:export t :type-initializer "pango_style_get_type")
  (:normal 0)
  (:oblique 1)
  (:italic 2))

(define-g-enum "PangoVariant" pango-variant
    (:export t :type-initializer "pango_variant_get_type")
  (:normal 0)
  (:small-caps 1))

(define-g-enum "PangoWeight" pango-weight
    (:export t :type-initializer "pango_weight_get_type")
  (:thin 100)
  (:ultralight 200)
  (:light 300)
  (:book 380)
  (:normal 400)
  (:medium 500)
  (:semibold 600)
  (:bold 700)
  (:ultrabold 800)
  (:heavy 900)
  (:ultraheavy 1000))

(define-g-enum "PangoStretch" pango-stretch
    (:export t :type-initializer "pango_stretch_get_type")
  (:ultra-condensed 0)
  (:extra-condensed 1)
  (:condensed 2)
  (:semi-condensed 3)
  (:normal 4)
  (:semi-expanded 5)
  (:expanded 6)
  (:extra-expanded 7)
  (:ultra-expanded 8))

(define-g-enum "PangoGravity" pango-gravity
    (:export t :type-initializer "pango_gravity_get_type")
  (:south 0)
  (:east 1)
  (:north 2)
  (:west 3)
  (:auto 4))

(define-g-boxed-cstruct pango-font-description "PangoFontDescription"
  (family-name :string :initform "")
  (style pango-style :initform :normal)
  (variant pango-variant :initform :normal)
  (weight pango-weight :initform :normal)
  (stretch pango-stretch :initform :normal)
  (gravity pango-gravity :initform :auto))

(export (boxed-related-symbols 'pango-font-description))

(define-g-boxed-cstruct pango-matrix "PangoMatrix"
  (xx :double :initform 0.0)
  (xy :double :initform 0.0)
  (yx :double :initform 0.0)
  (yy :double :initform 0.0)
  (x0 :double :initform 0.0)
  (y0 :double :initform 0.0))

(export (boxed-related-symbols 'pango-matrix))

(define-g-boxed-opaque pango-layout-line "PangoLayoutLine"
  :alloc (error "You do not create PangoLayoutLine yourself"))

(export (boxed-related-symbols 'pango-layout-line))
