BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" "t1"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

