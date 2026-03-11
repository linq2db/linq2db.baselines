-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT /*+ USE_NL(c_1 p) */
	p."ParentID",
	p."Value1"
FROM
	"Child" c_1
		INNER JOIN "Parent" p ON c_1."ParentID" = p."ParentID"

