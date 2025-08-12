BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	CAST(1 AS NUMBER(1))
FROM
	"Parent" p
UNION
SELECT
	ch."ParentID",
	CAST(0 AS NUMBER(1))
FROM
	"Child" ch

