BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Max(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

