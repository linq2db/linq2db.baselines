-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 1') = N'John 1'

