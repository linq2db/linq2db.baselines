BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	CAST(1 AS Char(1))
FROM
	"Parent" p
UNION
SELECT
	ch."ParentID",
	CAST(0 AS Char(1))
FROM
	"Child" ch

