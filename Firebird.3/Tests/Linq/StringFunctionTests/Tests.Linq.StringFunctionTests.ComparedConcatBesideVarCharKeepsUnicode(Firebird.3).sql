-- Firebird.3 Firebird3
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	"t"."Id",
	CASE
		WHEN (Coalesce("t"."VarCharColumn", '') || Coalesce(CAST(@suffix AS VARCHAR(6)), '')) > "t"."NVarCharColumn" OR "t"."NVarCharColumn" IS NULL
			THEN 1
		WHEN (Coalesce("t"."VarCharColumn", '') || Coalesce(CAST(@suffix AS VARCHAR(6)), '')) = "t"."NVarCharColumn"
			THEN 0
		ELSE -1
	END,
	TRIM(TRAILING FROM (Coalesce("t"."VarCharColumn", '') || Coalesce(CAST(@suffix AS VARCHAR(6)), '')))
FROM
	"StringTypesTable" "t"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

-- Firebird.3 Firebird3
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	"t"."Id"
FROM
	"StringTypesTable" "t"
WHERE
	(Coalesce("t"."VarCharColumn", '') || Coalesce(CAST(@suffix AS VARCHAR(6)), '')) LIKE "t"."NVarCharColumn"

