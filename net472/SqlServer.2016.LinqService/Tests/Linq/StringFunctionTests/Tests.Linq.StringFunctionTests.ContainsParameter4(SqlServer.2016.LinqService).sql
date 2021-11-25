BeforeExecute
-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%Jo%' ESCAPE N'~'
ORDER BY
	IIF([p].[FirstName] LIKE N'%Jo%' ESCAPE N'~', 1, 0)

