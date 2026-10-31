-- SapHana.Native SapHana
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix_1 NVarChar(3) -- String
SET     @suffix_1 = 'Жук'
DECLARE @suffix_2 NVarChar(3) -- String
SET     @suffix_2 = 'Жук'
DECLARE @suffix_3 NVarChar(3) -- String
SET     @suffix_3 = 'Жук'

SELECT
	"p"."Id",
	"p"."Sku" || Coalesce(:"suffix", ''),
	Coalesce(:"suffix_1", '') || "p"."Sku" || Coalesce(:"suffix_2", ''),
	"p"."Sku" || Coalesce(:"suffix_3", '')
FROM
	"ConcatProduct" "p"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

