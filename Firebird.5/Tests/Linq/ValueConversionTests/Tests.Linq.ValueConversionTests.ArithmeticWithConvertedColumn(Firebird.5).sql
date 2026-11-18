-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 2

SELECT
	SUM("g_1"."Cents") * CAST(@operand AS Int)
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 2

SELECT
	CAST(@operand AS Int) * SUM("g_1"."Cents")
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 2

SELECT
	SUM("g_1"."Cents") / CAST(@operand AS Int)
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 200

SELECT
	Mod(SUM("g_1"."Cents"), CAST(@operand AS Int))
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 200

SELECT
	SUM("g_1"."Cents") + CAST(@operand AS Int)
FROM
	"ConvertedAmount" "g_1"
GROUP BY
	"g_1"."Group"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 2

SELECT
	"x"."Cents" * CAST(@operand AS Int)
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 200

SELECT
	Mod("x"."Cents", CAST(@operand AS Int))
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 200

SELECT
	"x"."Cents" + CAST(@operand AS Int)
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @operand Integer -- Int32
SET     @operand = 200

SELECT
	"x"."Cents" - CAST(@operand AS Int)
FROM
	"ConvertedAmount" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 2 ROWS ONLY

