-- Firebird.2.5 Firebird
DECLARE @operand Integer -- Int32
SET     @operand = 2

SELECT FIRST 2
	SUM("g_1"."Cents") * CAST(@operand AS Int)
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"

-- Firebird.2.5 Firebird
DECLARE @operand Integer -- Int32
SET     @operand = 2

SELECT FIRST 2
	SUM("g_1"."Cents") / CAST(@operand AS Int)
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"

-- Firebird.2.5 Firebird
DECLARE @operand Integer -- Int32
SET     @operand = 200

SELECT FIRST 2
	SUM("g_1"."Cents") + CAST(@operand AS Int)
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"

-- Firebird.2.5 Firebird
DECLARE @operand Integer -- Int32
SET     @operand = 2

SELECT FIRST 2
	"x"."Cents" * CAST(@operand AS Int)
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1

-- Firebird.2.5 Firebird
DECLARE @operand Integer -- Int32
SET     @operand = 200

SELECT FIRST 2
	"x"."Cents" + CAST(@operand AS Int)
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1

