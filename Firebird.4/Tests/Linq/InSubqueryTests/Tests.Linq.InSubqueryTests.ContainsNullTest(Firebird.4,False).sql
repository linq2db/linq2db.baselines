BeforeExecute
-- Firebird.4 Firebird4

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

