BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @skip Int32
SET     @skip = 300000

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

