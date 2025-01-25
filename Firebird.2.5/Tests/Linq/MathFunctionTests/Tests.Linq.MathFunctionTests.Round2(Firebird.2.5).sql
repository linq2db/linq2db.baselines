BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t_1"."c1"
FROM
	(
		SELECT
			CAST(CASE
				WHEN "t"."MoneyValue" - Floor("t"."MoneyValue") = 0.5 AND Mod(Floor("t"."MoneyValue"), 2) = 0
					THEN Floor("t"."MoneyValue")
				ELSE Round("t"."MoneyValue", 0)
			END AS Float) as "c1"
		FROM
			"LinqDataTypes" "t"
	) "t_1"
WHERE
	"t_1"."c1" <> 0

