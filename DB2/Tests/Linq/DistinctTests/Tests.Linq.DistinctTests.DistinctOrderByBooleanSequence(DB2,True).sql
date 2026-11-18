-- DB2 DB2.LUW DB2LUW
SELECT
	"t_1".ID
FROM
	(
		SELECT DISTINCT
			"t"."BoolValue",
			"t".ID
		FROM
			"LinqDataTypes" "t"
	) "t_1"
ORDER BY
	"t_1"."BoolValue" DESC,
	"t_1".ID

