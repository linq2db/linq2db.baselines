BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT /*+ CACHE(p) CACHE(c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

