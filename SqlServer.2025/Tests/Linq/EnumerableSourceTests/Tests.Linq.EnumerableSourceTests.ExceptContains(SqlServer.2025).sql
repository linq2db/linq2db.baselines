-- SqlServer.2025 SqlServer.2022

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

