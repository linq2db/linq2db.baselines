BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM Replace("p"."MoneyValue", ',', '.')))
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

