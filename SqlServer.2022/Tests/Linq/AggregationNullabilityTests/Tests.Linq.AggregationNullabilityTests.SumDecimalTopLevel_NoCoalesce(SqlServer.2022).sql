-- SqlServer.2022

SELECT
	SUM([i].[DecimalValue])
FROM
	[Inner] [i]
WHERE
	[i].[Group] = 1

