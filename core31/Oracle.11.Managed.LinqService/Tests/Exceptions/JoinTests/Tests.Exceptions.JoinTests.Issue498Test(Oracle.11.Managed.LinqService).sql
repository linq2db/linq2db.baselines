BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."ParentID"
FROM
	"Parent" x
		INNER JOIN "Child" y ON x."ParentID" = y."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	x."ParentID"
FROM
	"Parent" x
		INNER JOIN "Child" y ON x."ParentID" = y."ParentID"
GROUP BY
	x."ParentID"

