-- DB2 DB2.LUW DB2LUW
SELECT
	"g_2"."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			DATE("g_1"."CreatedOnUtc") as "Date_1"
		FROM
			"DateTimePrecisionTable" "g_1"
	) "g_2"
GROUP BY
	"g_2"."Date_1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."CreatedOnUtc"
FROM
	"DateTimePrecisionTable" "t1"

