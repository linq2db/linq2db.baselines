-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
OFFSET 300000 ROWS FETCH NEXT 1 ROWS ONLY 

