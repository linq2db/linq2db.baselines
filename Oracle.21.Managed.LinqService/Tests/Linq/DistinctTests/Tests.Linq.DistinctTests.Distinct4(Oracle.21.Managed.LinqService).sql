BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT DISTINCT
	Coalesce(p."Value1", MOD(p."ParentID", 2)),
	p."Value1"
FROM
	"Parent" p

