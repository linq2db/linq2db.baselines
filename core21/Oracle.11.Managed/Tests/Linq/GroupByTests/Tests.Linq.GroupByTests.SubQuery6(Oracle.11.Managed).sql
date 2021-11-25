BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	ch."ParentID" + 1
FROM
	"Child" ch
GROUP BY
	ch."ParentID" + 1

