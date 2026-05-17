-- Firebird.2.5 Firebird

SELECT
	Replace("p"."MoneyValue", ',', '.')
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

