BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Max(ch."ChildID")
FROM
	"Child" ch
GROUP BY
	ch."ChildID"

