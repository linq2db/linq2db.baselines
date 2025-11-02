-- Firebird.2.5 Firebird
DECLARE @One Integer -- Int32
SET     @One = 1

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @One = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @Zero Integer -- Int32
SET     @Zero = 0

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @Zero = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @OneN Integer -- Int32
SET     @OneN = 1

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @OneN = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @ZeroN = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	1 = 0

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @One Integer -- Int32
SET     @One = 1

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @One = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @Zero Integer -- Int32
SET     @Zero = 0

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @Zero = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @OneN Integer -- Int32
SET     @OneN = 1

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @OneN = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id" AND @ZeroN = "s"."Value1"
	)

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

