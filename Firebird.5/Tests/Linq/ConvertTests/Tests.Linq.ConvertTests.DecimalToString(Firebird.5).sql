BeforeExecute
-- Firebird.5 Firebird4

SELECT
	TRIM(TRAILING '.' FROM TRIM(TRAILING '0' FROM REPLACE("p"."MoneyValue", ',', '.')))
FROM
	"LinqDataTypes" "p"
WHERE
	Char_Length("p"."MoneyValue") > 0

