-- Firebird.5 Firebird4

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM Replace("p"."MoneyValue", ',', '.')))
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

