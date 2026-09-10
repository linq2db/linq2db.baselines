-- Firebird.2.5 Firebird
DECLARE @Date TimeStamp -- DateTime
SET     @Date = TIMESTAMP '2020-02-29 00:00:00.0000'
DECLARE @dateTo TimeStamp -- DateTime
SET     @dateTo = TIMESTAMP '2020-03-10 00:00:00.0000'

WITH RECURSIVE "x"
(
	"Counter",
	"Date_1",
	"Date_Year",
	"Date_Month"
)
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(@Date AS TimeStamp),
		Extract(year from CAST(@Date AS TimeStamp)),
		Extract(month from CAST(@Date AS TimeStamp))
	FROM rdb$database
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		DateAdd(Day, 1, "t1"."Date_1"),
		Extract(year from DateAdd(Day, 1, "t1"."Date_1")),
		Extract(month from DateAdd(Day, 1, "t1"."Date_1"))
	FROM
		"x" "t1"
	WHERE
		DateAdd(Day, 1, "t1"."Date_1") < @dateTo
)
SELECT
	"r"."Date_1",
	CAST(LPad(CAST("r"."Date_Year" AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST("r"."Date_Month" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-' || LPad(CAST("r"."Counter" AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') AS TimeStamp)
FROM
	"x" "r"

