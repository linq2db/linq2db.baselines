BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x."ParentID",
	x."Value1",
	c_1."ParentID",
	c_1."ChildID",
	"cInfo"."ParentID",
	"cInfo"."Value1"
FROM
	"Parent" x
		INNER JOIN "Child" c_1 ON x."ParentID" = c_1."ParentID"
		LEFT JOIN "Parent" "cInfo" ON c_1."ParentID" = "cInfo"."ParentID"
WHERE
	x."ParentID" = 1

