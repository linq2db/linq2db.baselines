BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	"Issue681Table"@XE t1
WHERE
	t1.ID = :ID

