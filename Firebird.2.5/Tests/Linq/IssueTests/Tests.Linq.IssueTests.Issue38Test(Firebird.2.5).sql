BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" "a_GrandChildren1"
		WHERE
			"a"."ParentID" = "a_GrandChildren1"."ParentID" AND
			"a"."ChildID" = "a_GrandChildren1"."ChildID"
	)
FROM
	"Child" "a"

