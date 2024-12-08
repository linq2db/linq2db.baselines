BeforeExecute
-- Informix.DB2 Informix

SELECT
	Floor(t.*)
FROM
	LinqDataTypes t
WHERE
	t.MoneyValue::Float * 57.295779513082323 <> 0.10000000000000001

