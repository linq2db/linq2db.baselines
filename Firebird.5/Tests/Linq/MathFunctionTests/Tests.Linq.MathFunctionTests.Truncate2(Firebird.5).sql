-- Firebird.5 Firebird4

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Trunc(CAST(-"p"."MoneyValue" AS DOUBLE PRECISION), 0) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.10000000000000001

