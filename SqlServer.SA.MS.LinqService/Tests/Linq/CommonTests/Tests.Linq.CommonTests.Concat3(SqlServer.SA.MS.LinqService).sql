BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 12') = N'John 12'

