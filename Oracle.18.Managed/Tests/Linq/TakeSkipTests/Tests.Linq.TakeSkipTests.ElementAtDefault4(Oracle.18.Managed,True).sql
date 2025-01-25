BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 300000

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" > 1
OFFSET :n ROWS FETCH NEXT 1 ROWS ONLY 

