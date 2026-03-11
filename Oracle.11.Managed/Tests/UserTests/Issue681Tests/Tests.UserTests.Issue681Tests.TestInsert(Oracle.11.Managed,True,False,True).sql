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
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO TEST."Issue681Table"@XE
(
	ID,
	"Value"
)
VALUES
(
	:ID,
	:Value
)

