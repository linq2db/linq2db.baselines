BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Parent" gr
GROUP BY
	gr."ParentID"

