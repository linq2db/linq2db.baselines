BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "p"."MoneyValue" >= 5.1 THEN "p"."MoneyValue"
				ELSE 5.1
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."c1" <> 0

