BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT DISTINCT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		INNER JOIN "Parent" u ON x."ParentID" = u."ParentID" AND u."Value1" > 5
WHERE
	x."ChildID" > 30

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT DISTINCT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		INNER JOIN "Parent" u ON x."ParentID" = u."ParentID" AND u."Value1" > 5
WHERE
	x."ChildID" > 30

