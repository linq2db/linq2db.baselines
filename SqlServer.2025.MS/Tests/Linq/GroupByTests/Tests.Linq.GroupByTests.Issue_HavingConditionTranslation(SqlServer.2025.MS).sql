-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[MiddleName],
	COUNT(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[MiddleName]
HAVING
	[t1].[MiddleName] IS NULL OR [t1].[MiddleName] <> N'Unknown'

