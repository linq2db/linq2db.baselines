-- Firebird.4 Firebird4
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'

SELECT
	"t"."Id",
	TRIM(TRAILING FROM Replace("t"."CharColumn", 'A', CAST(@suffix AS VARCHAR(6)))),
	TRIM(TRAILING FROM Replace("t"."CharColumn", 'A', _utf8 x'D096'))
FROM
	"StringTypesTable" "t"

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

