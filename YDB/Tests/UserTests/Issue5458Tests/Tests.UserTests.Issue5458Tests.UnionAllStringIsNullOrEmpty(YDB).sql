-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value_1 IS NULL OR CAST(Unicode::GetLength(t1.Value_1) AS Int32) = 0 as IsEmpty
FROM
	(
		SELECT
			t.Id as Id,
			t.`Value` as Value_1
		FROM
			StringTable t
		WHERE
			t.Id <= 2
		UNION ALL
		SELECT
			t_1.Id as Id,
			t_1.`Value` as Value_1
		FROM
			StringTable t_1
		WHERE
			t_1.Id > 2
	) t1
ORDER BY
	t1.Id

