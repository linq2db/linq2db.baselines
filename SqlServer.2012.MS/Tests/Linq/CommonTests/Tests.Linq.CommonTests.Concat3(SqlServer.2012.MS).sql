BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 12') = N'John 12'

