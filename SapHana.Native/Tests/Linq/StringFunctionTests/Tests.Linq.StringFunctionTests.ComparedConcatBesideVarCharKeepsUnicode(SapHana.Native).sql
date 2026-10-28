-- SapHana.Native SapHana
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'
DECLARE @suffix_1 NVarChar(3) -- String
SET     @suffix_1 = 'Жук'
DECLARE @suffix_2 NVarChar(3) -- String
SET     @suffix_2 = 'Жук'

SELECT
	"t"."Id",
	CASE
		WHEN (Coalesce("t"."VarCharColumn", '') || Coalesce(:"suffix", '')) > "t"."NVarCharColumn" OR "t"."NVarCharColumn" IS NULL
			THEN 1
		WHEN (Coalesce("t"."VarCharColumn", '') || Coalesce(:"suffix_1", '')) = "t"."NVarCharColumn"
			THEN 0
		ELSE -1
	END,
	RTRIM(Coalesce("t"."VarCharColumn", '') || Coalesce(:"suffix_2", ''))
FROM
	"StringTypesTable" "t"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

-- SapHana.Native SapHana
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	"t"."Id"
FROM
	"StringTypesTable" "t"
WHERE
	(Coalesce("t"."VarCharColumn", '') || Coalesce(:"suffix", '')) LIKE "t"."NVarCharColumn"

