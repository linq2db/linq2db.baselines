-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."Id",
	"p"."Text"
FROM
	"WhiteSpaceTextRow" "p"
WHERE
	NOT ("p"."Text" IS NULL OR LTRIM("p"."Text", '	
                  　') = '')

