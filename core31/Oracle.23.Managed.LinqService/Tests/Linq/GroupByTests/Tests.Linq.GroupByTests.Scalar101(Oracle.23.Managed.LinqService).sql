BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Max(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

