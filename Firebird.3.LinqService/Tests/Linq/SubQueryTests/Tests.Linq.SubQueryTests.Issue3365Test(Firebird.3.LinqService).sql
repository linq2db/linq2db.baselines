BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			"a_GrandChildren"."ParentID"
		FROM
			"GrandChild" "a_GrandChildren"
		WHERE
			"x"."ParentID" = "a_GrandChildren"."ParentID" AND "x"."ChildID" = "a_GrandChildren"."ChildID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Child" "x"
ORDER BY
	(
		SELECT
			"a_GrandChildren"."ParentID"
		FROM
			"GrandChild" "a_GrandChildren"
		WHERE
			"x"."ParentID" = "a_GrandChildren"."ParentID" AND "x"."ChildID" = "a_GrandChildren"."ChildID"
		FETCH NEXT 1 ROWS ONLY
	)

