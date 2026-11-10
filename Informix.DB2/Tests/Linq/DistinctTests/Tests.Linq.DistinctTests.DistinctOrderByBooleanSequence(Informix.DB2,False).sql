-- Informix.DB2 Informix
SELECT
	t_1.ID
FROM
	(
		SELECT DISTINCT
			t.BoolValue,
			t.ID
		FROM
			LinqDataTypes t
	) t_1
ORDER BY
	t_1.BoolValue,
	t_1.ID

