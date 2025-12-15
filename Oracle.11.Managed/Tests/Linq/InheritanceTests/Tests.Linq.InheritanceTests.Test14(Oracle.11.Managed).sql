-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 10

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id AND ROWNUM <= 1

