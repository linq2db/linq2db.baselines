-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Value_1 as Value_1,
	CASE
		WHEN NOT (t1.Value_1 IS NULL OR CAST(Unicode::GetLength(t1.Value_1) AS Int32) = 0)
			THEN t1.Value_1
		ELSE 'default'u
	END as TranslatedMessage
FROM
	(
		SELECT
			t.Id as Id,
			t.`Value` as Value_1
		FROM
			StringTable t
		WHERE
			t.Id <= 1
		UNION ALL
		SELECT
			t_1.Id as Id,
			t_1.`Value` as Value_1
		FROM
			StringTable t_1
		WHERE
			t_1.Id > 1
	) t1
		INNER JOIN OtherTable o ON t1.Id = o.Id
ORDER BY
	t1.Id

