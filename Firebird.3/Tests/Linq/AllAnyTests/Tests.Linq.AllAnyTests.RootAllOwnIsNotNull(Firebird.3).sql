-- Firebird.3 Firebird3
SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."Value1" IS NOT NULL AND "p"."Value1" <= 0
	)
FROM rdb$database

