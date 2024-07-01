BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			"a_GrandChildren"."ParentID"
		FROM
			"GrandChild" "a_GrandChildren"
		WHERE
			"x"."ParentID" = "a_GrandChildren"."ParentID" AND "x"."ChildID" = "a_GrandChildren"."ChildID"
	)
FROM
	"Child" "x"
ORDER BY
	(
		SELECT FIRST 1
			"a_GrandChildren"."ParentID"
		FROM
			"GrandChild" "a_GrandChildren"
		WHERE
			"x"."ParentID" = "a_GrandChildren"."ParentID" AND "x"."ChildID" = "a_GrandChildren"."ChildID"
	)

