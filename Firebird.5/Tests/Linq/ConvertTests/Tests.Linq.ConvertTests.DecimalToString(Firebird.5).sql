-- Firebird.5 Firebird4

SELECT
	Replace("p"."MoneyValue", ',', '.')
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

