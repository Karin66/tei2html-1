# Preface #

The TEI format is the standard format for transcribing scholarly texts in humanities. Unlike common word-processing formats, TEI focuses on the semantics of text elements instead of the look-and-feel. This is great for research purposes, as it enables software to answer questions like "give me all citations in Shakespeare where Hamlet uses the past tense," (provided of course somebody has encoded that data) but makes it harder to produce nicely formatted output from the same source. This is where the tei2html stylesheets kick-in.

`tei2html` is a collection of XSLT stylesheets that transform a duly marked up TEI file to an attractive HTML, ePub or PDF document. It is intended to work out-of-the-box with unadorned TEI files, but will be able to perform better if certain conventions are followed.

These guidelines describe the conventions for preparing TEI files such that they can successfully be converted by tei2html. They assume a working knowledge of the [TEI Lite documentation](http://www.tei-c.org/Lite/teiu5_en.html). They are inspired by, and often follow the [Wisconsin University Guidelines for Markup of Electronic Texts](http://uwdcc.library.wisc.edu/resources/etext/TEIGuidelines.shtml), which provides excellent examples of numerous issues. For real starters, a [very gentle introduction to the TEI markup language](http://www.tei-c.org/Support/Learn/mueller-index.htm) is available.

Whether TEI is useful for you depends on your needs. If you are occasionally producing a text, and need to have it formatted, TEI and `tei2html` is probably not the way to go. If you have a large collection of texts, and need to maintain them for a long time, and would like to add numerous types of scholarly annotations to them, TEI certainly warrants serious consideration.

Originally, `tei2html` was developed to produce beautiful new editions of public domain texts for Project Gutenberg, but it can also be used for other TEI files.

# Introduction #

## Guiding Principles ##

The design of tei2html is based on a small set of guiding principles and design decisions. These are some assumptions, that I believe are reasonable to expect when digitizing text for research and preservation.

The guiding principles are:

  * Tags supplement the plain text content of the transcribed work. They do not replace content. When all tags are  removed from the file, the remaining text should reflect the original source text as much as possible. As a corollary to this principle, `tei2html` does not supply much content itself, unless specifically asked to do so, it will not insert tables of content, headers, labels, etc.
  * Tags are semantic: they reflect as much as possible the function of a certain part of the text, not its appearance. This also means that tei2html needs to rely on a number of defaults and formatting hints to decide what things should ultimately look like in the output.
  * The `@rend` attribute in tags are intended as formatting hints only. Ignoring them fully or partially should not render a text incomprehensible.

The design decisions are:

  * The `@rend` attribute values are designed to map relatively directly to CSS format statements in the HTML version, however, they use a different syntax, and are thus not copied verbatim.


## SGML versus XML ##

XML is a considerably simplified reincarnation of SGML. It does away with much of the complexity of SGML. However, TEI (and TEILite) was originally developed for SGML, and I started using TEI even before XML was conceived.

Although XML is simpler, and many more tools can deal with it, SGML is somewhat easier to type due to its more relaxed syntax rules. You don't need to use quotes on all attribute values, nor need to provide close tags for all elements. For this reason, I normally produce my files in SGML. The conversion to XML is straightforward, and can (almost always) be fully automated. Since I am used to SGML, the examples in this document will be valid SGML snippets, but not necessarily well-formed XML.

If so desired, you can work directly in XML, instead of SGML. Working in XML directly has a number of benefits as well:

  1. Directly viewable in most modern browsers (which can apply an XSLT transform on the fly; however, in practice, the `tei2html` stylesheets used here are too complex for a browser, and no current browser supports XSLT 2.0).
  1. No initial conversion tool required.
  1. Can use embedded namespaces for other XML schemas.


## Considerations for Output Formats ##

TEI files are typically prepared from pre-existing sources, that is printed books, magazines or other textual works. In those cases, it may be desirable to not only to include the logical content of the work being transcribed, but also to describe the physical appearance of some aspects of the text. In that case, the `@rend` attribute can be used to record those aspects.

For many uses, a TEI file is not the most desirable format. For reading, it is far more convenient to have it available in some more presentation-oriented format. With `tei2html`, a TEI document can be converted to various output formats, which are:


  * HTML for viewing in a browser on a PC.
  * ePub for reading on dedicated eBook readers.
  * Plain text for reading on simple devices (supported using Perl).
  * PDF for printing on paper (supported using Prince-XML, using special HTML output).


These output formats place some restrictions on the structure of the TEI file, and the usage conventions adopted not enforced by the DTD. The most important of these are given below.

_References to page numbers._ In printed media, the page numbers produced in the output will differ from the source. To correctly replace page numbers in the source, each page number should be tagged as a reference (`ref` element) with `@type=pageref`. The tag should only enclose the page number itself, not any of the surrounding material. The transformation will replace the content of this tag with the actual number of the page the material referred to appears on. Almost always, the reference is not to the page itself, but to some element appearing on this page. For this reason, it is better not to link to the `pb` element, but to the element actually referred to. (In HTML output, the original page numbers will be shown in the margin and used in the text.)

_Nesting of cross-references and anchors._ In HTML, it is not possible to nest anchors and cross-references. As a results, certain elements in the TEI source should not be nested, as these result in nested anchors in HTML. For example, the `ref` element should not contain `corr` elements (as the later generates an anchor for the automatically generated errata list). The proper way to resolve this is to place the `ref` element in the `corr` element.

_Nesting of paragraphs._ In HTML, it is not possible to nest paragraphs. In most cases, the transformation software will take this in account, and close (and re-open) open paragraphs in HTML when needed.

In a few other cases, the transformation may not result in entirely correct results. Always validate the end result with tools such as tidy or epubcheck.


## Special Characters in SGML files ##

For XML files actually used by the XSLT stylesheets, any character encoding supported by XML/XSLT works. For SGML, the options are more limited.

However, the pre-processing scripts in Perl can only deal with either pure 7-bit ASCII, or in the ISO 8859-1 character set. All characters outside those ranges are represented by character entities.

Use entities from the following sets:

  * The standard SGML ISO 8859 entity sets.
  * The other declared entity sets that come with the TEI DTD.
  * Invent your own descriptive abbreviation. Always provide the Unicode code point for a character (if it exists) in the entity declaration, and provide the Unicode character name or a description in a comment. Please follow the pattern used by ISO where possible.
  * Numeric character entities, based on Unicode.

For longer fragments in a non-Latin script, I normally use an ASCII based transliteration scheme, and supply tools (called `patc`) to convert these to Unicode. For documents completely a non-Latin script, it will probably be better to work with Unicode.


### Fractions entities ###

Fractions of one figure above and below.

`&frac12;`

Fractions with more than one figure above or below.

`&frac3_16;`
`&frac23_100;`

### Special filling characters for leaders ###

_Future plan_

`&dotfil;`
`&dashfil;`
`&linefil;`
`&spacefil;`

These are roughly equivalent to TEX's special glue values.