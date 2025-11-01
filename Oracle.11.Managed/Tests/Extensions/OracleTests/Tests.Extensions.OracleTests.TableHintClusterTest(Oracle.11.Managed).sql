-- Oracle.11.Managed Oracle11

SELECT /*+ CLUSTER(p) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

