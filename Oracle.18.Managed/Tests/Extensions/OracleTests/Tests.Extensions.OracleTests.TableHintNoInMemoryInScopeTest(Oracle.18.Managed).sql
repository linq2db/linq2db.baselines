-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ NO_INMEMORY(p) NO_INMEMORY(c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

