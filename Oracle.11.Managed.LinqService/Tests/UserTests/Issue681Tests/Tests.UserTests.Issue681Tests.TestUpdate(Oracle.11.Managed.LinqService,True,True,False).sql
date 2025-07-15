BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value Int32
SET     @Value = 10
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	"Issue681Table"@XE t1
SET
	"Value" = :Value
WHERE
	t1.ID = :ID

