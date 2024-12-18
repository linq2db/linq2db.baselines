BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Assignee"
FROM
	(
		SELECT
			(
				SELECT
					"a_GrandChildren"."ParentID"
				FROM
					"GrandChild" "a_GrandChildren"
				WHERE
					"x"."ParentID" = "a_GrandChildren"."ParentID" AND
					"a_GrandChildren"."ParentID" IS NOT NULL AND
					"x"."ChildID" = "a_GrandChildren"."ChildID" AND
					"a_GrandChildren"."ChildID" IS NOT NULL
				FETCH NEXT 1 ROWS ONLY
			) as "Assignee"
		FROM
			"Child" "x"
	) "t1"
ORDER BY
	"t1"."Assignee"

