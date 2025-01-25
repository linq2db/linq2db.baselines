BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "p"."MoneyValue" <> 0 THEN 1
				ELSE 0
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "p_1"
WHERE
	"p_1"."c1" = 1

