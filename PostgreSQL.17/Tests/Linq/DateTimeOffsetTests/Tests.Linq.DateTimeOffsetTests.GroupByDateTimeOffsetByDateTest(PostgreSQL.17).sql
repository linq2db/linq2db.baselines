-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			Date_Trunc('day', (x."TransactionDate" AT TIME ZONE 'UTC')) as "Key_1"
		FROM
			"Transactions" x
	) t1
GROUP BY
	t1."Key_1"
ORDER BY
	t1."Key_1"

