-- SapHana.Odbc SapHanaOdbc
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"p"."Id",
	"p"."Sku" || Coalesce(?, ''),
	Coalesce(?, '') || "p"."Sku" || Coalesce(?, ''),
	"p"."Sku" || Coalesce(?, '')
FROM
	"ConcatProduct" "p"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

