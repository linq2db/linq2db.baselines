BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CUME_DIST() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1"),
	CUME_DIST() OVER(ORDER BY p."Value1", c_1."ChildID" DESC)
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CUME_DIST(1, 2) WITHIN GROUP (ORDER BY p."Value1", c_1."ChildID" DESC),
	CUME_DIST(2, 3) WITHIN GROUP (ORDER BY p."Value1" DESC, c_1."ChildID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

