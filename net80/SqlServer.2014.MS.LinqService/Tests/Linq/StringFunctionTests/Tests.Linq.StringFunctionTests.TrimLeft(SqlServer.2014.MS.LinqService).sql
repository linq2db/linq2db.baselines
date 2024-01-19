BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	LTrim(N'  ' + [p].[FirstName] + N' ') = N'John ' AND
	[p].[PersonID] = 1

