BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p_1"."c1"
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN "p"."MoneyValue" - Floor("p"."MoneyValue") = 0.5 AND Mod(Int(Floor("p"."MoneyValue")), 2) = 0
					THEN Floor("p"."MoneyValue")
				ELSE Round("p"."MoneyValue", 0)
			END) AS Decimal) as "c1"
		FROM
			"LinqDataTypes" "p"
	) "p_1"
WHERE
	"p_1"."c1" > 0

