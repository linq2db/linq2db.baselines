BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				1 = "c_1"."ParentID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

