BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID" + 1
FROM
	"Child" ch
GROUP BY
	ch."ParentID" + 1

