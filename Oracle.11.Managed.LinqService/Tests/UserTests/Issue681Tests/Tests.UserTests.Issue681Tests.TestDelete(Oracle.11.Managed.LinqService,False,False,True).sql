BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	sys_context('userenv', 'current_schema')
FROM
	"LinqDataTypes" t1
WHERE
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ID Int32
SET     @ID = 5

DELETE FROM
	TEST."Issue681Table" t1
WHERE
	t1.ID = :ID

