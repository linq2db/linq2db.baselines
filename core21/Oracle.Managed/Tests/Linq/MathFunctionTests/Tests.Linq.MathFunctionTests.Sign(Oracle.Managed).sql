BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Sign(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	Sign(p.MoneyValue) <> 0

