BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

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

