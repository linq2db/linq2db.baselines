BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			Round("t"."MoneyValue", 1) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

