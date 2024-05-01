BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p_1"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "p"."MoneyValue" <> 4.5 THEN TRUE
				ELSE FALSE
			END as "c1"
		FROM
			"LinqDataTypes" "p"
	) "p_1"
WHERE
	"p_1"."c1" = FALSE

