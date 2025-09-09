BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TO_DATE('2010-01-' || Lpad(t."TransactionId",2,'0'), 'YYYY-MM-DD')
FROM
	"Transactions" t
WHERE
	EXTRACT(DAY FROM TO_DATE('2010-01-' || Lpad(t."TransactionId",2,'0'), 'YYYY-MM-DD')) > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."TransactionId",
	t1."TransactionDate"
FROM
	"Transactions" t1

