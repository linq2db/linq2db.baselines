BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + IIF(LEN([p].[FirstName]) < CAST(6 AS Int), REPLICATE(N' ', CAST(6 AS Int) - LEN([p].[FirstName])) + [p].[FirstName], [p].[FirstName]) = N'123  John' AND
	[p].[PersonID] = 1

