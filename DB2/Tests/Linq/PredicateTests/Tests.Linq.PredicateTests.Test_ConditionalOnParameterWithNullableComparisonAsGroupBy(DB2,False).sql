-- DB2 DB2.LUW DB2LUW
SELECT
	"g_2"."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CAST(NULL AS smallint) as "Key_1"
		FROM
			"NullableFlagTable" "g_1"
	) "g_2"
GROUP BY
	"g_2"."Key_1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1"."Flag"
FROM
	"NullableFlagTable" "t1"

