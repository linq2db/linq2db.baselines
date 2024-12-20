BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "t"."MoneyValue" <> 4.5 THEN TRUE
				ELSE FALSE
			END as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	NOT "p"."c1"

