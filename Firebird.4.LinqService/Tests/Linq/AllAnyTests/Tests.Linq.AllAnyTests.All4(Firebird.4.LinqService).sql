BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" <= 3
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

