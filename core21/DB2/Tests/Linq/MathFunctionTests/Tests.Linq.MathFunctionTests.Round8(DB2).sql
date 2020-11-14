BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN Float("p"."MoneyValue") - Floor(Float("p"."MoneyValue")) = 0.5 AND Mod(Int(Floor(Float("p"."MoneyValue"))), 2) = 0
					THEN Floor(Float("p"."MoneyValue"))
				ELSE Round(Float("p"."MoneyValue"), 0)
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

