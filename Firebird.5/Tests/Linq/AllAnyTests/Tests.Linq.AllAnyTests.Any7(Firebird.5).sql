BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" "t1"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

