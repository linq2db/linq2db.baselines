BeforeExecute
-- Firebird3 Firebird

SELECT
	Floor(("p"."MoneyValue" * 180) / PI())
FROM
	"LinqDataTypes" "p"
WHERE
	Floor(("p"."MoneyValue" * 180) / PI()) <> 0.1

