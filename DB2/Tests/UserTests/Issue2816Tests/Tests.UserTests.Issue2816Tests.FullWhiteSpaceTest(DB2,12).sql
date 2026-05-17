-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Id",
	"p"."Text"
FROM
	"Issue2816Table" "p"
WHERE
	NOT ("p"."Text" IS NULL OR LTRIM("p"."Text", '	
                 　') = '')

