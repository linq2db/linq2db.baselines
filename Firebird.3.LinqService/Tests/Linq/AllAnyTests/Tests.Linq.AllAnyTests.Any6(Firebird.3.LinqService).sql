BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" > 3
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

