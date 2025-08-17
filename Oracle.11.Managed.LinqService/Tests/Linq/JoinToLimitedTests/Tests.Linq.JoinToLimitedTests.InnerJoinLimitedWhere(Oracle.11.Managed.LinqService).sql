BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	o."ParentID",
	o."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" o
		INNER JOIN (
			SELECT
				x."ParentID",
				x."ChildID"
			FROM
				"Child" x
			WHERE
				ROWNUM <= 1
		) c_1 ON c_1."ParentID" = o."ParentID"

