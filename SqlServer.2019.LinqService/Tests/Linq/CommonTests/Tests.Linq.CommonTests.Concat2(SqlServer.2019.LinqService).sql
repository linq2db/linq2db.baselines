BeforeExecute
-- SqlServer.2019

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] + N' 1') = N'John 1'

