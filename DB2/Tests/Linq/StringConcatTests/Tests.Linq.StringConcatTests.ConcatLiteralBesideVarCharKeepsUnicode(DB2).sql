-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."Id",
	'Артикул ' || "p"."Sku"
FROM
	"ConcatProduct" "p"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

