-- DB2 DB2.LUW DB2LUW
DECLARE @operand Integer(4) -- Int32
SET     @operand = 2

SELECT
	SUM("g_1"."Cents") * @operand
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @operand Integer(4) -- Int32
SET     @operand = 2

SELECT
	SUM("g_1"."Cents") / @operand
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @operand Integer(4) -- Int32
SET     @operand = 200

SELECT
	SUM("g_1"."Cents") + @operand
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @operand Integer(4) -- Int32
SET     @operand = 2

SELECT
	"x"."Cents" * @operand
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @operand Integer(4) -- Int32
SET     @operand = 200

SELECT
	"x"."Cents" + @operand
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

