BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date Timestamp(20) -- DateTime
SET     @Date = '2020-02-29-00.00.00.000000'
DECLARE @dateTo Timestamp(20) -- DateTime
SET     @dateTo = '2020-03-10-00.00.00.000000'

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(@Date AS timestamp)
	FROM SYSIBM.SYSDUMMY1
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		"t1"."Date_1" + 1 DAY
	FROM
		"x" "t1"
	WHERE
		"t1"."Date_1" + 1 DAY < @dateTo
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date Timestamp(20) -- DateTime
SET     @Date = '2020-02-29-00.00.00.000000'
DECLARE @dateTo Timestamp(20) -- DateTime
SET     @dateTo = '2020-03-10-00.00.00.000000'

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST(@Date AS timestamp)
	FROM SYSIBM.SYSDUMMY1
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		"t1"."Date_1" + 1 DAY
	FROM
		"x" "t1"
	WHERE
		"t1"."Date_1" + 1 DAY < @dateTo
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

