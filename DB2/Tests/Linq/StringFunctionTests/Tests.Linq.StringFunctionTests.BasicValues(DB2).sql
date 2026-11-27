-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."Id",
	"p"."Text"
FROM
	"WhiteSpaceTextRow" "p"
WHERE
	"p"."Text" IS NULL OR LTRIM("p"."Text", '	
                  　') = ''

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Text"
FROM
	"WhiteSpaceTextRow" "t1"

