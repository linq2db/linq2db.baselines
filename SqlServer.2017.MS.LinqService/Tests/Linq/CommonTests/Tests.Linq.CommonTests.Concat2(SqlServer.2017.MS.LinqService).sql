BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 1') = N'John 1'

