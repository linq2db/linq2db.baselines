BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" t1
		INNER JOIN "Parent" "a_Parent" ON t1."ParentID" = "a_Parent"."ParentID"
LIMIT :take

