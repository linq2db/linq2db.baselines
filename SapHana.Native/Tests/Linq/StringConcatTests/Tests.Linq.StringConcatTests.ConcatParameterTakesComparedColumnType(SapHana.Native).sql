-- SapHana.Native SapHana
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	"p"."Title" = ("p"."Sku" || Coalesce(:"suffix", ''))

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

