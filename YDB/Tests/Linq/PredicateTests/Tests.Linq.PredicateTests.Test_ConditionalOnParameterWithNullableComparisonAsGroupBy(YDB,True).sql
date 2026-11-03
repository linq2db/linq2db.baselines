-- YDB Ydb
SELECT
	g_2.Key_1 as Key_1,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			CASE
				WHEN g_1.A = g_1.B OR g_1.A IS NULL AND g_1.B IS NULL THEN true
				ELSE false
			END as Key_1
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

