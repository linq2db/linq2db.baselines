-- SapHana.Odbc SapHanaOdbc
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"t"."Id",
	CASE
		WHEN (Coalesce("t"."VarCharColumn", '') || Coalesce(?, '')) > "t"."NVarCharColumn" OR "t"."NVarCharColumn" IS NULL
			THEN 1
		WHEN (Coalesce("t"."VarCharColumn", '') || Coalesce(?, '')) = "t"."NVarCharColumn"
			THEN 0
		ELSE -1
	END,
	RTRIM(Coalesce("t"."VarCharColumn", '') || Coalesce(?, ''))
FROM
	"StringTypesTable" "t"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"t"."Id"
FROM
	"StringTypesTable" "t"
WHERE
	(Coalesce("t"."VarCharColumn", '') || Coalesce(?, '')) LIKE "t"."NVarCharColumn"

