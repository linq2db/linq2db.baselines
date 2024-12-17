BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" "c_1"
			WHERE
				"c_1"."Value1" IS NULL
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

