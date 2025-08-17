BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @id Int32
SET     @id = 10

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id
FETCH NEXT 1 ROWS ONLY

