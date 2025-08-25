BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Floor("t"."Value_1")
FROM
	(
		SELECT
			CAST("p"."MoneyValue" AS Float) * 57.295779513082323 as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.10000000000000001

