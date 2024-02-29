BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID"
FROM
	"Parent" x
		INNER JOIN "Child" y ON x."ParentID" = y."ParentID"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID"
FROM
	"Parent" x
		INNER JOIN "Child" y ON x."ParentID" = y."ParentID"
GROUP BY
	x."ParentID"

