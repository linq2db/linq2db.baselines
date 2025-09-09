BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 12') = N'John 12'

