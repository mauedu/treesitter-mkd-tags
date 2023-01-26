;From MDeiml/tree-sitter-markdown
(atx_heading (inline) @text.title)
(setext_heading (paragraph) @text.title)

; Added by mau according to:
; https://github.com/MDeiml/tree-sitter-markdown/issues/37

[
  (atx_h1_marker)
  (atx_h2_marker)
  (atx_h3_marker)
  (atx_h4_marker)
  (atx_h5_marker)
  (atx_h6_marker)
  (setext_h1_underline)
  (setext_h2_underline)
] @punctuation.special

[
  (atx_heading
    (atx_h1_marker))
  (atx_heading
    (atx_h2_marker))
  (setext_heading
    (setext_h1_underline))
] @text.title1

[
  (link_title)
  (indented_code_block)
  (fenced_code_block)
] @text.literal

[
  (fenced_code_block_delimiter)
] @punctuation.delimiter

(code_fence_content) @none

[
  (link_destination)
] @text.uri

[
  (link_label)
] @text.reference

[
  (list_marker_plus)
  (list_marker_minus)
  (list_marker_star)
  (list_marker_dot)
  (list_marker_parenthesis)
  (thematic_break)
] @punctuation.special

[
  (block_continuation)
  (block_quote_marker)
] @punctuation.special

[
  (backslash_escape)
] @string.escape

([
  (info_string)
  (fenced_code_block_delimiter)
] @conceal
(#set! conceal ""))
