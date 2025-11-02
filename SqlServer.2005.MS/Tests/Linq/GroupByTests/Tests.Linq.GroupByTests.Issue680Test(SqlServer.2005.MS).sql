-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(CASE
		WHEN [g_1].[TimeStamp] > CAST('2020-02-29T17:54:55.123' AS DATETIME)
			THEN 1
		ELSE NULL
	END)
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

