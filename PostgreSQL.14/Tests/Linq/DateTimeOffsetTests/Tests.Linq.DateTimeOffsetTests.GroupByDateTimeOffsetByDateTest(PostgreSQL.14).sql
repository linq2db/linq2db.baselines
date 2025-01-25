BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			Date_Trunc('day', x."TransactionDate" AT TIME ZONE 'UTC')::Date as "Key_1"
		FROM
			"Transactions" x
	) t1
GROUP BY
	t1."Key_1"
ORDER BY
	t1."Key_1"

