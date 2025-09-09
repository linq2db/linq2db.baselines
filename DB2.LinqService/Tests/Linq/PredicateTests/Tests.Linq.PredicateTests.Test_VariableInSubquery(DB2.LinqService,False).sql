BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @One Integer(4) -- Int32
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
	@One IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Zero Integer(4) -- Int32
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
	@Zero IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @OneN Integer(4) -- Int32
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
	@OneN IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ZeroN Integer(4) -- Int32
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
	@ZeroN IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Null Integer -- Int32
SET     @Null = NULL

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	@Null IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @One Integer(4) -- Int32
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
	@One NOT IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Zero Integer(4) -- Int32
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
	@Zero NOT IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @OneN Integer(4) -- Int32
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
	@OneN NOT IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ZeroN Integer(4) -- Int32
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
	@ZeroN NOT IN (
		SELECT
			"s"."Value1"
		FROM
			"BooleanTable" "s"
		WHERE
			"s"."Id" > "r"."Id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

