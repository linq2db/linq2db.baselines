BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2020-02-29' AS timestamp)
DECLARE @dateTo TimeStamp -- DateTime
SET     @dateTo = CAST('2020-03-10' AS timestamp)

WITH RECURSIVE "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(@Date AS TimeStamp)
	FROM rdb$database
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		DateAdd(Day, 1, "t1"."Date_1")
	FROM
		"x" "t1"
	WHERE
		DateAdd(Day, 1, "t1"."Date_1") < @dateTo
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2020-02-29' AS timestamp)
DECLARE @dateTo TimeStamp -- DateTime
SET     @dateTo = CAST('2020-03-10' AS timestamp)

WITH RECURSIVE "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(@Date AS TimeStamp)
	FROM rdb$database
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		DateAdd(Day, 1, "t1"."Date_1")
	FROM
		"x" "t1"
	WHERE
		DateAdd(Day, 1, "t1"."Date_1") < @dateTo
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

