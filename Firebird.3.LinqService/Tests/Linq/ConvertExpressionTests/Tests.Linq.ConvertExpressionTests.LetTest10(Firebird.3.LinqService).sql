BeforeExecute
-- Firebird.3 Firebird3

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

