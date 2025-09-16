BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST('2020-02-29-00.00.00.000000' AS timestamp)
	FROM SYSIBM.SYSDUMMY1
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		"t1"."Date_1" + 1 DAY
	FROM
		"x" "t1"
	WHERE
		"t1"."Date_1" + 1 DAY < '2020-03-10-00.00.00.000000'
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "x" ("Counter", "Date_1")
AS
(
	SELECT
		CAST(1 AS Int),
		CAST('2020-02-29-00.00.00.000000' AS timestamp)
	FROM SYSIBM.SYSDUMMY1
	UNION ALL
	SELECT
		"t1"."Counter" + 1,
		"t1"."Date_1" + 1 DAY
	FROM
		"x" "t1"
	WHERE
		"t1"."Date_1" + 1 DAY < '2020-03-10-00.00.00.000000'
)
SELECT
	"t2"."Counter",
	"t2"."Date_1"
FROM
	"x" "t2"

