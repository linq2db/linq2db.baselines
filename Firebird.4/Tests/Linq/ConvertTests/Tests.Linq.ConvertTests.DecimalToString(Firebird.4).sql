BeforeExecute
-- Firebird.4 Firebird4

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM REPLACE("p"."MoneyValue", ',', '.')))
FROM
	"LinqDataTypes" "p"
WHERE
	CHAR_LENGTH("p"."MoneyValue") > 0

