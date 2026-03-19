-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	parent_1."ParentID",
	parent_1."ChildID"
FROM
	"Parent" t1
		INNER JOIN "Child" parent_1 ON parent_1."ParentID" = t1."ParentID"
WHERE
	t1."Value1" = :parentId

