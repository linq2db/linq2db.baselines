BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT
				N'Doe' as [c1]
		) [n] ON [p].[LastName] = [n].[c1]

