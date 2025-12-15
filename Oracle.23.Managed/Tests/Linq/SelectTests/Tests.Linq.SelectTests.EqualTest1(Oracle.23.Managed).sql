-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
FETCH NEXT 1 ROWS ONLY

