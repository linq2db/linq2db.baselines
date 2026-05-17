-- Firebird.2.5 Firebird
DECLARE @True Char -- String
SET     @True = '1'

SELECT
	"r"."Id",
	"r"."Boolean",
	"r"."BooleanN",
	"r"."Int32",
	"r"."Int32N",
	"r"."Decimal",
	"r"."DecimalN",
	"r"."Double",
	"r"."DoubleN"
FROM
	"BooleanTable" "r"
WHERE
	Coalesce("r"."BooleanN", CAST(@True AS CHAR(1))) = '1'

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Boolean",
	"t1"."BooleanN",
	"t1"."Int32",
	"t1"."Int32N",
	"t1"."Decimal",
	"t1"."DecimalN",
	"t1"."Double",
	"t1"."DoubleN"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @False Char -- String
SET     @False = '0'

SELECT
	"r"."Id",
	"r"."Boolean",
	"r"."BooleanN",
	"r"."Int32",
	"r"."Int32N",
	"r"."Decimal",
	"r"."DecimalN",
	"r"."Double",
	"r"."DoubleN"
FROM
	"BooleanTable" "r"
WHERE
	Coalesce("r"."BooleanN", CAST(@False AS CHAR(1))) = '1'

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Boolean",
	"t1"."BooleanN",
	"t1"."Int32",
	"t1"."Int32N",
	"t1"."Decimal",
	"t1"."DecimalN",
	"t1"."Double",
	"t1"."DoubleN"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Boolean",
	"r"."BooleanN",
	"r"."Int32",
	"r"."Int32N",
	"r"."Decimal",
	"r"."DecimalN",
	"r"."Double",
	"r"."DoubleN"
FROM
	"BooleanTable" "r"
WHERE
	Coalesce("r"."BooleanN", CASE
		WHEN Mod("r"."Id", 2) = 1 THEN '1'
		ELSE '0'
	END) = '1'

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Boolean",
	"t1"."BooleanN",
	"t1"."Int32",
	"t1"."Int32N",
	"t1"."Decimal",
	"t1"."DecimalN",
	"t1"."Double",
	"t1"."DoubleN"
FROM
	"BooleanTable" "t1"

