BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "p"."MoneyValue" - Floor("p"."MoneyValue") = 0.5 AND Mod(Int(Floor("p"."MoneyValue")), 2) = 0
			THEN Floor("p"."MoneyValue")
		ELSE Round("p"."MoneyValue", 0)
	END
FROM
	"LinqDataTypes" "p"
WHERE
	CASE
		WHEN "p"."MoneyValue" - Floor("p"."MoneyValue") = 0.5 AND Mod(Int(Floor("p"."MoneyValue")), 2) = 0
			THEN Floor("p"."MoneyValue")
		ELSE Round("p"."MoneyValue", 0)
	END <> 0

