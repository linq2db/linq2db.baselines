-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 10
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	SYSTEM."Issue681Table"@"xe" t1
SET
	"Value" = :Value
WHERE
	t1.ID = :ID

