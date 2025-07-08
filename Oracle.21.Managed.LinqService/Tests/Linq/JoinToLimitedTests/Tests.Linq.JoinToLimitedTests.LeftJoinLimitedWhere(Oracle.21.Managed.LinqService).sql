BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
					FETCH NEXT 1 ROWS ONLY
				) c_1
		) c_2 ON c_2."ParentID" = o."ParentID"

