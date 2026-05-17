-- Firebird.3 Firebird3

SELECT
	Replace("p"."MoneyValue", ',', '.')
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

