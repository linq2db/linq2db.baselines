BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	CASE
		WHEN "t"."MoneyValue" - FLOOR("t"."MoneyValue") = 0.5 AND Mod(Int(FLOOR("t"."MoneyValue")), 2) = 0
			THEN FLOOR("t"."MoneyValue")
		ELSE ROUND("t"."MoneyValue", 0)
	END <> 0

