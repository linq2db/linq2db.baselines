-- Oracle.11.Managed Oracle11

SELECT DISTINCT
	Coalesce(p."Value1", MOD(p."ParentID", 2)),
	p."Value1"
FROM
	"Parent" p

