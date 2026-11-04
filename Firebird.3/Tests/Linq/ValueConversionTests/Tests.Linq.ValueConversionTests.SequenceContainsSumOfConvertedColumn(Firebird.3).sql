-- Firebird.3 Firebird3
DECLARE @total Integer -- Int32
SET     @total = 700

SELECT
	COUNT(*)
FROM
	"ConvertedAmount" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					SUM("g_1"."Cents") as "Sum_1"
				FROM
					"ConvertedAmount" "g_1"
				GROUP BY
					"g_1"."Group"
			) "t1"
		WHERE
			@total = "t1"."Sum_1"
	)

