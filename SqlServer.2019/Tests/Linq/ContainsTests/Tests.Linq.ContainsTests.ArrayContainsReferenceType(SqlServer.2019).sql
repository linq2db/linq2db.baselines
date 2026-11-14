-- SqlServer.2019
SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (N'John', N'Jane')

