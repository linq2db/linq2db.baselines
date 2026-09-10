-- DB2 DB2.LUW DB2LUW
DECLARE @name Integer(4) -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Value" = RTrim(Char(CAST(@name AS Int)))

-- DB2 DB2.LUW DB2LUW
DECLARE @name Integer(4) -- Int32
SET     @name = 4

SELECT
	"t"."Id",
	"t"."Value",
	"t"."Money"
FROM
	"ParameterCastUnderCastTable" "t"
WHERE
	"t"."Money" = Decimal(CAST(@name AS Int), 18, 10)

