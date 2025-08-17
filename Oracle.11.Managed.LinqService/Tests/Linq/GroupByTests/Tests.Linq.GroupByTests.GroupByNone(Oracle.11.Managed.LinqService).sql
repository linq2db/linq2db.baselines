BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	MIN(gr."ParentID"),
	MAX(gr."ParentID")
FROM
	"Parent" gr

