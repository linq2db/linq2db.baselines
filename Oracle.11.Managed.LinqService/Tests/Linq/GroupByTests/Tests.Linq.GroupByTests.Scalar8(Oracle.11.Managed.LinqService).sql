BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

