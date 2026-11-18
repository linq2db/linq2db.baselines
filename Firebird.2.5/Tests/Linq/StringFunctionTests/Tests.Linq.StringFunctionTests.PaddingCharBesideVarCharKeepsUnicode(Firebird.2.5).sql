-- Firebird.2.5 Firebird
SELECT
	"t"."Id",
	CASE
		WHEN "t"."VarCharColumn" IS NULL OR CHAR_LENGTH("t"."VarCharColumn") >= 8
			THEN "t"."VarCharColumn"
		ELSE LPAD("t"."VarCharColumn", 8, _utf8 x'D096')
	END
FROM
	"StringTypesTable" "t"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."CharColumn",
	"t1"."NCharColumn",
	"t1"."VarCharColumn",
	"t1"."NVarCharColumn"
FROM
	"StringTypesTable" "t1"

