BeforeExecute
-- Firebird.3 Firebird3

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

