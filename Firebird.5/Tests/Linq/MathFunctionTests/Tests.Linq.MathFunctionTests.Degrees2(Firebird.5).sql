-- Firebird.5 Firebird4

SELECT
	Floor("t"."Value_1")
FROM
	(
		SELECT
			CAST("p"."MoneyValue" AS DOUBLE PRECISION) * 57.295779513082323 as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.10000000000000001

