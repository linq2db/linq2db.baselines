BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."c1"
FROM
	(
		SELECT
			Decimal(Floor(CASE
				WHEN "t"."MoneyValue" - FLOOR("t"."MoneyValue") = 0.5 AND Mod(Int(FLOOR("t"."MoneyValue")), 2) = 0
					THEN FLOOR("t"."MoneyValue")
				ELSE ROUND("t"."MoneyValue", 0)
			END), 20, 0) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

