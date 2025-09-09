BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"e"."Id",
	"e"."RecSrc",
	"e"."Value"
FROM
	"Entry" "e"
WHERE
	"e"."RecSrc" = 'default' AND "e"."Value" = 2007 OR
	"e"."RecSrc" = 'other' AND "e"."Value" = 2008

