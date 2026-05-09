-- Firebird.2.5 Firebird

SELECT
	LIST(Coalesce("t2"."Value_1", ''), '')
FROM
	(
		SELECT
			"t1"."Value" as "Value_1"
		FROM
			"ConcatGroupedEntity" "t1"
		ORDER BY
			"t1".PK
	) "t2"

