BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."c1"
FROM
	( 
		SELECT 
			Decimal("t"."MoneyValue", 20, 0) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

