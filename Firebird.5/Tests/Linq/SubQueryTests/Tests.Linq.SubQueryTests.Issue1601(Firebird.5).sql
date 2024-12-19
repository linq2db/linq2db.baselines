BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "t2".SUM_1 < 0 THEN 9
		ELSE "t2".SUM_1 + 8
	END,
	"t2".SUM_1 + "t2".SUM_1
FROM
	(
		SELECT
			(
				SELECT
					SUM("t1"."MoneyValue")
				FROM
					"LinqDataTypes" "t1"
			) as SUM_1
		FROM
			"LinqDataTypes" "q"
	) "t2"

