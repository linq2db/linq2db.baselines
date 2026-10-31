-- Firebird.3 Firebird3
DECLARE @dash VarChar(1) -- String
SET     @dash = '-'

SELECT
	"a"."Id",
	"b"."Id"
FROM
	"StringTypesTable" "a",
	"StringTypesTable" "b"
WHERE
	"b"."VarCharColumn" = TRIM(TRAILING FROM Replace("a"."CharColumn", '?', CAST(@dash AS VarChar(1) CHARACTER SET UNICODE_FSS))) OR
	"b"."VarCharColumn" IS NULL AND TRIM(TRAILING FROM Replace("a"."CharColumn", '?', CAST(@dash AS VarChar(1) CHARACTER SET UNICODE_FSS))) IS NULL

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

