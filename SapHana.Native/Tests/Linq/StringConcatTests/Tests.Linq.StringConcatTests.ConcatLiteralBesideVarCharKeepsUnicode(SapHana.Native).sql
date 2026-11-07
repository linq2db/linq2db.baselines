-- SapHana.Native SapHana
SELECT
	"p"."Id",
	'Артикул ' || "p"."Sku"
FROM
	"ConcatProduct" "p"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

