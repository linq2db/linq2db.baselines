BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 12') = N'John 12'

