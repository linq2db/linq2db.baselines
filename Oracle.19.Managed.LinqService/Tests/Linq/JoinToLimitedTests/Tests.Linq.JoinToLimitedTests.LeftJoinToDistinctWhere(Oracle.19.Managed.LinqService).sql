BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	o."ParentID",
	o."Value1",
	c_2."ParentID",
	c_2."ChildID"
FROM
	"Parent" o
		OUTER APPLY (
			SELECT DISTINCT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = o."ParentID"
		) c_2

