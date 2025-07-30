BeforeExecute
-- Firebird.3 Firebird3

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "c_1"
		WHERE
			"c_1"."Value1" IS NULL
	)
FROM rdb$database

