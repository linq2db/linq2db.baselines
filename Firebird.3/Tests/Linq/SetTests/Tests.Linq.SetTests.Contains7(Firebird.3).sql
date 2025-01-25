BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				11 = "c_1"."ParentID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

