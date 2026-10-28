-- Firebird.3 Firebird3
DECLARE @suffix VarChar(3) -- String
SET     @suffix = _utf8 x'D096D183D0BA'
DECLARE @search VarChar(1) -- String
SET     @search = _utf8 x'D096'

SELECT
	"t"."Id",
	Replace("t"."VarCharColumn", 'A', CAST(@suffix AS VARCHAR(6))),
	Replace("t"."VarCharColumn", 'A', CAST(@suffix AS VARCHAR(6))),
	Replace("t"."VarCharColumn", CAST(@search AS VARCHAR(2)), '-')
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

