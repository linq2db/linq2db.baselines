BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Max(ch."ParentID")
FROM
	"Child" ch
GROUP BY
	ch."ParentID"

