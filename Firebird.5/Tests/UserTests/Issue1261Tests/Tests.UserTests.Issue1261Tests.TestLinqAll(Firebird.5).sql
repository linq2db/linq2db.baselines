BeforeExecute
-- Firebird.5 Firebird4

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "x"
		WHERE
			"x"."ParentID" = 1 AND NOT ("x"."ChildID" = 11 AND "x"."GrandChildID" = 777)
	)
FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "x"
		WHERE
			"x"."ParentID" = 1 AND NOT ("x"."GrandChildID" = 777 AND "x"."ChildID" = 11)
	)
FROM rdb$database

