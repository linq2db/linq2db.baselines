-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	"Issue681Table" t1
WHERE
	t1.ID = :ID

