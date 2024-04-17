BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = 1
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

