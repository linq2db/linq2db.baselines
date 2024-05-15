BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "t"."MoneyValue" >= 5.1 THEN "t"."MoneyValue"
				ELSE 5.1
			END as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

