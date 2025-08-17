BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 1') = N'John 1'

