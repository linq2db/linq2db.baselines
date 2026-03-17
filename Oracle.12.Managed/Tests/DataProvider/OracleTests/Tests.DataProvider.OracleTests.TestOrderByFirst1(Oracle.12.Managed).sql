-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."Value1" = 1
ORDER BY
	x."ParentID" DESC
FETCH NEXT 1 ROWS ONLY

