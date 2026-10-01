-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN "p"."MoneyValue" * 2 = ROUND("p"."MoneyValue" * 2, Mod("p".ID, 2) + 2) AND "p"."MoneyValue" <> ROUND("p"."MoneyValue", Mod("p".ID, 2) + 2)
			THEN ROUND("p"."MoneyValue" / 2, Mod("p".ID, 2) + 2) * 2
		ELSE ROUND("p"."MoneyValue", Mod("p".ID, 2) + 2)
	END
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."MoneyValue" <> 0

