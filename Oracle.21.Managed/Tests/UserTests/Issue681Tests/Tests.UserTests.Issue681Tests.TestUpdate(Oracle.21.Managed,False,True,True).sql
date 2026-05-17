-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 10
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	SYSTEM."Issue681Table" t1
SET
	"Value" = :Value
WHERE
	t1.ID = :ID

