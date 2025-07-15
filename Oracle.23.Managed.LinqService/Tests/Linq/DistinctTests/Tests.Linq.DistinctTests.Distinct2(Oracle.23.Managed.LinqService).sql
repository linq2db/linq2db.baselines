BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	Coalesce(p."Value1", MOD(p."ParentID", 2))
FROM
	"Parent" p

