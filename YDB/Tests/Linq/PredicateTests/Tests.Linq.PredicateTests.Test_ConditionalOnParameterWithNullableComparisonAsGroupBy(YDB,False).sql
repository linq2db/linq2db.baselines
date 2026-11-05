-- YDB Ydb
SELECT
	g_2.Key_1 as Key_1,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			CAST(NULL AS Bool) as Key_1
		FROM
			NullableFlagTable g_1
	) g_2
GROUP BY
	g_2.Key_1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.Flag as Flag
FROM
	NullableFlagTable t1

