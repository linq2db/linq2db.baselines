BeforeExecute
-- Firebird

SELECT 
	"p"."c1"
FROM
	( 
		SELECT 
			Cast("t"."MoneyValue" as VarChar(31) CHARACTER SET UNICODE_FSS) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	Char_Length("p"."c1") > 0

