BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Parent" "p"
			WHERE
				EXISTS(
					SELECT
						1
					FROM
						"Child" "c_1"
					WHERE
						"p"."ParentID" = "c_1"."ParentID" AND "c_1"."ParentID" > 1
				)
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

