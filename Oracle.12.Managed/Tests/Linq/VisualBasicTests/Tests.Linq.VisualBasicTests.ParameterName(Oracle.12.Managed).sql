-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @VBLocal_id Int32
SET     @VBLocal_id = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :VBLocal_id

