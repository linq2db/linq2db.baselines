-- Firebird.5 Firebird4

SELECT
	LIST("t2"."Value_1", '')
FROM
	(
		SELECT
			"t1"."Value" as "Value_1"
		FROM
			"ConcatGroupedEntity" "t1"
		ORDER BY
			"t1".PK
	) "t2"

