BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(t."ParentID" * 1000) / 1000
FROM
	"Child" t
WHERE
	t."ParentID" * 1000 > 2000

