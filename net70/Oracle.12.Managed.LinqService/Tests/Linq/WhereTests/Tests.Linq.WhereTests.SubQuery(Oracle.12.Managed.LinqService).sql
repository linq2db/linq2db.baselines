BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID" * 1000
FROM
	"Child" ch
WHERE
	ch."ParentID" * 1000 > 2000

