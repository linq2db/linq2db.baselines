BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[p].[LastName] + N', ' + [p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + N', ' + [p].[FirstName] = N'Pupkin, John'

