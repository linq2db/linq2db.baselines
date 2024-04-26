BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			CAST("t"."MoneyValue" AS Float) * 57.295779513082323 as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0.10000000000000001

