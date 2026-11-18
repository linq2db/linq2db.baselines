-- Firebird.4 Firebird4
SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."Value1" IS NOT NULL AND "p"."Value1" > 1
	)
FROM rdb$database

