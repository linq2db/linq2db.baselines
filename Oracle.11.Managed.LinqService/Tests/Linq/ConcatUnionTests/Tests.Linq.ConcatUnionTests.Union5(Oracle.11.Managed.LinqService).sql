BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
UNION
SELECT
	p2."ParentID",
	NULL
FROM
	"Parent" p2

