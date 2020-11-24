BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	DENSE_RANK() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	DENSE_RANK() OVER(ORDER BY c_1."ChildID" DESC, p."Value1")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	DENSE_RANK(1, 2) WITHIN GROUP (ORDER BY c_1."ChildID" DESC, p."Value1")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

