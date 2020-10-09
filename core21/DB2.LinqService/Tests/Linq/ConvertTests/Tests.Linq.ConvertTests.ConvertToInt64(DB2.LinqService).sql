BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."c1"
FROM
	( 
		SELECT 
			BigInt(CASE
				WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND Mod(Int(Floor("t"."MoneyValue")), 2) = 0
					THEN Floor("t"."MoneyValue")
				ELSE Round("t"."MoneyValue", 0)
			END) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

