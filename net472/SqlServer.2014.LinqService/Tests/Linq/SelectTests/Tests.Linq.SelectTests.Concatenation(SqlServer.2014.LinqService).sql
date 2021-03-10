BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	N'123' + [p].[FirstName] + N'456' = N'123John456' AND
	[p].[PersonID] = 1

