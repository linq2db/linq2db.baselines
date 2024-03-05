BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'456'
FROM
	[Person] [p]
WHERE
	N'123' + [p].[FirstName] + N'456' = N'123John456' AND
	[p].[PersonID] = 1

