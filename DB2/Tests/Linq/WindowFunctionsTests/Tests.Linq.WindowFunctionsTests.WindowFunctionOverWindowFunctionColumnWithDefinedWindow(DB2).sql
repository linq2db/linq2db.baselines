-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."RowNum_1",
	ROW_NUMBER() OVER (PARTITION BY "t1"."RowNum_1" ORDER BY "t1"."Id")
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY "t"."Id") as "RowNum_1",
			"t"."Id"
		FROM
			"WindowFunctionTestEntity" "t"
	) "t1"

