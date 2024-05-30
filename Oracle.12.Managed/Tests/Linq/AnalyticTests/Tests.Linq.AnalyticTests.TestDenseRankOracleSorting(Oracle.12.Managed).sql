BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	DENSE_RANK(1, 2) WITHIN GROUP (ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

