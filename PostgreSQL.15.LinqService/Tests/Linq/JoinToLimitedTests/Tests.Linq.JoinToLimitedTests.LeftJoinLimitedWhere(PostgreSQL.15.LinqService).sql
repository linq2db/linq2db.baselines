BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	o."ParentID",
	o."Value1",
	c_2."ParentID",
	c_2."ChildID"
FROM
	"Parent" o
		LEFT JOIN (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				(
					SELECT
						x."ParentID",
						x."ChildID"
					FROM
						"Child" x
					ORDER BY
						x."ChildID" DESC
					LIMIT 1
				) c_1
		) c_2 ON c_2."ParentID" = o."ParentID"

