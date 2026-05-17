-- Oracle.11.Managed Oracle11

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11

SELECT
	sys_context('userenv', 'current_schema')
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= 1

-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	TEST."Issue681Table"@XE t1
WHERE
	t1.ID = :ID

