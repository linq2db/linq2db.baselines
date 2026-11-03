-- DB2 DB2.LUW DB2LUW
DECLARE @key VarChar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	("p"."Sku" || "p"."Title") = @key

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

