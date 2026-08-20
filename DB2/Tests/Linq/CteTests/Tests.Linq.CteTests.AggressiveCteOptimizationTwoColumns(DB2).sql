-- DB2 DB2.LUW DB2LUW
DECLARE @Date Timestamp(20) -- DateTime
SET     @Date = '2020-02-29-00.00.00.000000'
DECLARE @dateTo Timestamp(20) -- DateTime
SET     @dateTo = '2020-03-10-00.00.00.000000'

WITH "x"
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
		CAST(@Date AS timestamp),
		Extract(year from CAST(@Date AS timestamp)),
		Extract(month from CAST(@Date AS timestamp))
	FROM SYSIBM.SYSDUMMY1
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		"t1"."Date_1" + 1 DAY,
		Extract(year from ("t1"."Date_1" + 1 DAY)),
		Extract(month from ("t1"."Date_1" + 1 DAY))
	FROM
		"x" "t1"
	WHERE
		"t1"."Date_1" + 1 DAY < @dateTo
)
SELECT
	"r"."Date_1",
	CAST(LPad("r"."Date_Year", 4, '0') || '-' || LPad("r"."Date_Month", 2, '0') || '-' || LPad("r"."Counter", 2, '0') AS timestamp)
FROM
	"x" "r"

