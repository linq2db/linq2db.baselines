-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."Value1" = 1
FETCH NEXT 1 ROWS ONLY

