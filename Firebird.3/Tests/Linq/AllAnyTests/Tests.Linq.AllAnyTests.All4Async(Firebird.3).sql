BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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

