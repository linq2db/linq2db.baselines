BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	ROW_NUMBER() OVER(ORDER BY p."Value1", c_1."ChildID" DESC, p."ParentID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

