BeforeExecute
-- Oracle.Managed Oracle12

SELECT /*+ NO_USE_HASH(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

