#!/bin/env runhaskell

import Text.Pandoc.JSON

main :: IO ()
main = toJSONFilter colorFilter
  where colorFilter (Just (Format fmt)) (Quoted DoubleQuote str) | fmt == "latex" || fmt == "beamer" = 
            [RawInline latex "{<<}"] ++ str ++ [RawInline latex "{>>}"] where latex = Format "latex"
        colorFilter _ x = [x]