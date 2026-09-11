-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(0 AS Int),
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 3
UNION ALL
SELECT
	CAST(1 AS Int),
	p_1."ParentID",
	p_1."Value1"
FROM
	"Parent" p_1
WHERE
	p_1."ParentID" <= 3

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

