-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 2

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	CAST(p."ParentID" AS Number(19)) = :id

