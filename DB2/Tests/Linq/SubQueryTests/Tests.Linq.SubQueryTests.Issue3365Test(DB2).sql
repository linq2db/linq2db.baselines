-- DB2 DB2.LUW DB2LUW

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
					"x"."ParentID" = "a_GrandChildren"."ParentID" AND "x"."ChildID" = "a_GrandChildren"."ChildID"
				FETCH NEXT 1 ROWS ONLY
			) as "Assignee"
		FROM
			"Child" "x"
	) "t1"
ORDER BY
	"t1"."Assignee"

