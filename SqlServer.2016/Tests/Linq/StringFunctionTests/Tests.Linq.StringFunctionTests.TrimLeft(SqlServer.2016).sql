BeforeExecute
-- SqlServer.2016

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	LTrim(N'  ' + [p].[FirstName] + N' ') = N'John ' AND
	[p].[PersonID] = 1

