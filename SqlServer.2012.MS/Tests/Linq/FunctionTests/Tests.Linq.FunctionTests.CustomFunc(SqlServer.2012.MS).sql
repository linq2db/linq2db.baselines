BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[LastName] + N', ' + [p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + N', ' + [p].[FirstName] = N'Pupkin, John'

