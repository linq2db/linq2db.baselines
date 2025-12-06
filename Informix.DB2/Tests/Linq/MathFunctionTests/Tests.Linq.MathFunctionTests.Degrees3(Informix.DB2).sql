-- Informix.DB2 Informix

SELECT
	t.MoneyValue::Int::Float * 57.295779513082323
FROM
	LinqDataTypes t
WHERE
	(t.MoneyValue::Int::Float * 57.295779513082323)::Float <> 0.10000000000000001

