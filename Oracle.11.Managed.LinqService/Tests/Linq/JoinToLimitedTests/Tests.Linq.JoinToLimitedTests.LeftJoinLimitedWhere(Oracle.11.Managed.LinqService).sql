BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	o."ParentID",
	o."Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Parent" o
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				(
					SELECT
						x."ParentID",
						x."ChildID"
					FROM
						"Child" x
					ORDER BY
						x."ChildID" DESC
				) t1
			WHERE
				ROWNUM <= 1
		) c_1 ON c_1."ParentID" = o."ParentID"

