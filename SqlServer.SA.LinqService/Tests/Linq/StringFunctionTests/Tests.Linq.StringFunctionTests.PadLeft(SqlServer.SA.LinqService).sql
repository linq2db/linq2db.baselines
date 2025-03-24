BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + IIF(Len([p].[FirstName]) > 6, [p].[FirstName], Replicate(N' ', 6 - Len([p].[FirstName])) + [p].[FirstName]) = N'123  John' AND
	[p].[PersonID] = 1

