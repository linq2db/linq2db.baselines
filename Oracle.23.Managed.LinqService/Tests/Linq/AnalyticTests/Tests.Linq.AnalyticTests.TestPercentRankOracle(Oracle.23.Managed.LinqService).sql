BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	PERCENT_RANK() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	PERCENT_RANK() OVER(ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	PERCENT_RANK(2, 3) WITHIN GROUP (ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

