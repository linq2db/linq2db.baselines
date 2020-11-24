BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."ParentID",
	1
FROM
	"Parent" p
UNION
SELECT
	ch."ParentID",
	0
FROM
	"Child" ch

