-- YDB Ydb

SELECT
	COUNT(CASE
		WHEN g_1.`TimeStamp` > Timestamp('2020-02-29T17:54:55.123123Z')
			THEN 1
		ELSE NULL
	END) as res
FROM
	Issue680Table g_1
GROUP BY
	g_1.`TimeStamp`

