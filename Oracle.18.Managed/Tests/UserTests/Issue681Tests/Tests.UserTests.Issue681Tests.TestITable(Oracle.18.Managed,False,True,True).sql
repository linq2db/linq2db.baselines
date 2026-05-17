-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv', 'current_schema') as "c1"
FROM
	"LinqDataTypes" t1
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value"
FROM
	SYSTEM."Issue681Table" t1

