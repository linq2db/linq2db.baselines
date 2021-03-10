BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	BigInt(CASE
		WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND Mod(Int(Floor("t"."MoneyValue")), 2) = 0
			THEN Floor("t"."MoneyValue")
		ELSE Round("t"."MoneyValue", 0)
	END)
FROM
	"LinqDataTypes" "t"
WHERE
	BigInt(CASE
		WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND Mod(Int(Floor("t"."MoneyValue")), 2) = 0
			THEN Floor("t"."MoneyValue")
		ELSE Round("t"."MoneyValue", 0)
	END) > 0

