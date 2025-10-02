BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

WITH RECURSIVE "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(CAST('2020-02-29' AS timestamp) AS TimeStamp)
	FROM rdb$database
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		DateAdd(Day, 1, "t1"."Date_1")
	FROM
		"x" "t1"
	WHERE
		DateAdd(Day, 1, "t1"."Date_1") < CAST('2020-03-10' AS timestamp)
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

WITH RECURSIVE "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(CAST('2020-02-29' AS timestamp) AS TimeStamp)
	FROM rdb$database
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		DateAdd(Day, 1, "t1"."Date_1")
	FROM
		"x" "t1"
	WHERE
		DateAdd(Day, 1, "t1"."Date_1") < CAST('2020-03-10' AS timestamp)
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

