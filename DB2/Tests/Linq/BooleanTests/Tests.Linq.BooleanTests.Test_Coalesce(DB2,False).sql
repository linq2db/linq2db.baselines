BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @True SmallInt(4) -- Int16
SET     @True = 1

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
	Coalesce("r"."BooleanN", CAST(@True AS smallint))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW
DECLARE @False SmallInt(4) -- Int16
SET     @False = 0

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
	Coalesce("r"."BooleanN", CAST(@False AS smallint))

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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

