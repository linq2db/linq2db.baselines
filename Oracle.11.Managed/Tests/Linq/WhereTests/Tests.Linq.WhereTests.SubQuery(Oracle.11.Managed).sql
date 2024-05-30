BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(t."ParentID" * 1000) / 1000
FROM
	"Child" t
WHERE
	t."ParentID" * 1000 > 2000

