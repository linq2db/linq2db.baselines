BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT TOP (2)
	[t1].[RowNumber],
	[n].[PersonID]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			ROW_NUMBER() OVER(ORDER BY [r].[FirstName]) as [RowNumber]
		FROM
			[Person] [r]
	) [t1]
		INNER JOIN [Person] [n] ON [t1].[ID] = [n].[PersonID]
WHERE
	[n].[PersonID] = 2

