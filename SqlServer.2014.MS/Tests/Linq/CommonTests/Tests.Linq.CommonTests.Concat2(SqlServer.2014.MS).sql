BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 1') = N'John 1'

