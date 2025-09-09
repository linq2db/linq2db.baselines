BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	o."ParentID",
	o."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" o
		LEFT JOIN (
			SELECT
				x."ParentID",
				x."ChildID"
			FROM
				"Child" x
			ORDER BY
				x."ChildID" DESC
			LIMIT 1
		) c_1 ON c_1."ParentID" = o."ParentID"

