BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
				"Child" c_1
			FETCH NEXT 1 ROWS ONLY
		) c_2 ON o."ParentID" = c_2."ParentID"
ORDER BY
	c_2."ChildID" DESC

