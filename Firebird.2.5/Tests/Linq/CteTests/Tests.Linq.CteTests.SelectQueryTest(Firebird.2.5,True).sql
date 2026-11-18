-- Firebird.2.5 Firebird
WITH RECURSIVE "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(TIMESTAMP '2020-02-29 00:00:00.0000' AS TimeStamp)
	FROM rdb$database
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		DateAdd(Day, 1, "t1"."Date_1")
	FROM
		"x" "t1"
	WHERE
		DateAdd(Day, 1, "t1"."Date_1") < TIMESTAMP '2020-03-10 00:00:00.0000'
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

