BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(CASE
		WHEN g_1.TimeStamp > toDateTime64('2020-02-29 17:54:55.1231234', 7)
			THEN 1
		ELSE NULL
	END)
FROM
	Issue680Table g_1
GROUP BY
	g_1.TimeStamp

