BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT /*+ HASH(p) HASH(c_1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

