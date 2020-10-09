BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t."ParentID", 
	t."ChildID", 
	t."GrandChildID", 
	"a_Child"."ParentID", 
	"a_Child"."ChildID", 
	"a_Child"."ParentID_1", 
	"a_Child"."Value1"
FROM
	"GrandChild" t
		LEFT JOIN ( 
			SELECT 
				t1."ParentID", 
				t1."ChildID", 
				"a_Parent"."ParentID" as "ParentID_1", 
				"a_Parent"."Value1"
			FROM
				"Child" t1
					LEFT JOIN "Parent" "a_Parent" ON t1."ParentID" = "a_Parent"."ParentID"
		) "a_Child" ON t."ParentID" = "a_Child"."ParentID" AND t."ChildID" = "a_Child"."ChildID"
LIMIT :take

