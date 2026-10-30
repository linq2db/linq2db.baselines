-- YDB Ydb
SELECT
	t_1.ID as ID
FROM
	(
		SELECT DISTINCT
			t.BoolValue as BoolValue,
			t.ID as ID
		FROM
			LinqDataTypes t
	) t_1
ORDER BY
	t_1.BoolValue DESC,
	t_1.ID

