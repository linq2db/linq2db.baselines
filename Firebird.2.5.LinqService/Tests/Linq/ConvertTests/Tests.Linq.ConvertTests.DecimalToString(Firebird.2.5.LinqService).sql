BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM Replace("p"."MoneyValue", ',', '.')))
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

