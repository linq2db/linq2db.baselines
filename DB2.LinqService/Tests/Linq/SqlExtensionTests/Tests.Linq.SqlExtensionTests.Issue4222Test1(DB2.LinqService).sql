BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."RecSrc",
	"e"."Value"
FROM
	"Entry" "e"
WHERE
	("e"."RecSrc", "e"."Value") = ('default', 2007)

