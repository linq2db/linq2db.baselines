BeforeExecute
-- Firebird

SELECT 
	"p"."c1"
FROM
	( 
		SELECT 
			Cast("t"."MoneyValue" as Decimal(18,10)) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."c1" > 0

