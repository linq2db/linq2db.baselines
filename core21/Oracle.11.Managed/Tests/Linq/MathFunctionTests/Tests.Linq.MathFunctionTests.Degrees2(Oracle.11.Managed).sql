BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(p.MoneyValue as Float) * 57.295779513082323D
FROM
	LinqDataTypes p
WHERE
	Cast(p.MoneyValue as Float) * 57.295779513082323D <> 0.10000000000000001D

