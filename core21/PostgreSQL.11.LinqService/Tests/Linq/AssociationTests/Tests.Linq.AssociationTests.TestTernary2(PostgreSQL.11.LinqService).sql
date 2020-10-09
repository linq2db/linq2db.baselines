BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	"a_Middle"."ParentID", 
	"a_Middle"."ChildID", 
	"a_Middle"."GrandChildID"
FROM
	"Parent" t
		LEFT JOIN ( 
			SELECT 
				"a_Bottom"."ParentID", 
				"a_Bottom"."ChildID", 
				"a_Bottom"."GrandChildID", 
				t1."ParentID" as "ParentID_1"
			FROM
				"Child" t1
					LEFT JOIN "GrandChild" "a_Bottom" ON t1."ChildID" = "a_Bottom"."ChildID"
		) "a_Middle" ON t."ParentID" = "a_Middle"."ParentID_1"
WHERE
	t."ParentID" IN (1, 5)
ORDER BY
	t."ParentID"

