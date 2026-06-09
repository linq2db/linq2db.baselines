-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			t3.Key_1 as Key_1,
			COUNT(*) as Count_1
		FROM
			(
				SELECT
					Unwrap(CAST(1 AS Int32)) as Key_1
				FROM
					Person t1
				UNION ALL
				SELECT
					Unwrap(CAST(2 AS Int32)) as Key_1
				FROM
					Person t2
			) t3
		GROUP BY
			t3.Key_1
	) t4
WHERE
	t4.Key_1 = 1 AND t4.Count_1 > 1

