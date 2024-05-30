BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "x"
			WHERE
				"x"."ParentID" = 1 AND NOT ("x"."ChildID" = 11 AND "x"."GrandChildID" = 777)
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "x"
			WHERE
				"x"."ParentID" = 1 AND NOT ("x"."GrandChildID" = 777 AND "x"."ChildID" = 11)
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

