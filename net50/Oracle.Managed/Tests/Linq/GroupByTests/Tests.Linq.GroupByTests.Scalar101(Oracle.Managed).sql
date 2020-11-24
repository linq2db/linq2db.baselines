BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Max(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

