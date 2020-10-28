BeforeExecute
-- Firebird

SELECT
	Cast(Floor(CASE
		WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND Mod(Floor("t"."MoneyValue"), 2) = 0
			THEN Floor("t"."MoneyValue")
		ELSE Round("t"."MoneyValue", 0)
	END) as Decimal)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor(CASE
		WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND Mod(Floor("t"."MoneyValue"), 2) = 0
			THEN Floor("t"."MoneyValue")
		ELSE Round("t"."MoneyValue", 0)
	END) as Decimal) > 0

