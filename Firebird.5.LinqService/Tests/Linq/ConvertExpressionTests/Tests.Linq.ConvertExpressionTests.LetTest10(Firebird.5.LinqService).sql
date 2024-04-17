BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" "p"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

