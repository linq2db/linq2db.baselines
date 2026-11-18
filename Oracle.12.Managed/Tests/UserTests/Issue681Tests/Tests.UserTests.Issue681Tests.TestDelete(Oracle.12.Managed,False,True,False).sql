-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	"Issue681Table" t1
WHERE
	t1.ID = :ID

