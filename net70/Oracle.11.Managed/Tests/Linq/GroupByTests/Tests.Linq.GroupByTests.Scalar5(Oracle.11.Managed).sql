BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Max(ch."ParentID")
FROM
	"Child" ch
GROUP BY
	ch."ParentID"

