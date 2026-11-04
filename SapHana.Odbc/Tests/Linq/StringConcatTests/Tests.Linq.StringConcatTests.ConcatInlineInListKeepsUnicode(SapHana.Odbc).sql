-- SapHana.Odbc SapHanaOdbc
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	("p"."Sku" || Coalesce(?, '')) IN ('A-100Жук', 'B-200Щит')

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"p"."Id"
FROM
	"ConcatProduct" "p"
WHERE
	("p"."Sku" || Coalesce(?, '')) IN ("p"."Title", 'B-200Жук')

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Sku",
	"t1"."Title"
FROM
	"ConcatProduct" "t1"

