BeforeExecute
-- Firebird.4 Firebird4
DECLARE @True Boolean
SET     @True = TRUE

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
	Coalesce("r"."BooleanN", CAST(@True AS BOOLEAN))

BeforeExecute
-- Firebird.4 Firebird4

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

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @False Boolean
SET     @False = FALSE

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
	Coalesce("r"."BooleanN", CAST(@False AS BOOLEAN))

BeforeExecute
-- Firebird.4 Firebird4

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

BeforeExecute
-- Firebird.4 Firebird4

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
	(Coalesce("r"."BooleanN", Mod("r"."Id", 2) = 1))

BeforeExecute
-- Firebird.4 Firebird4

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

