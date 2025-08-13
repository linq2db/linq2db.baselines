BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."Value1" = 1
ORDER BY
	x."ParentID" DESC
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

