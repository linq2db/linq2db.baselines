-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	"QualifiedNameTable" t1
WHERE
	t1.ID = :ID

