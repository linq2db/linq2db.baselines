-- SqlCe

SELECT
	COUNT(CASE
		WHEN [g_1].[TimeStamp] > '2020-02-29 17:54:55.123' THEN 1
		ELSE NULL
	END) as [COUNT_1]
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

