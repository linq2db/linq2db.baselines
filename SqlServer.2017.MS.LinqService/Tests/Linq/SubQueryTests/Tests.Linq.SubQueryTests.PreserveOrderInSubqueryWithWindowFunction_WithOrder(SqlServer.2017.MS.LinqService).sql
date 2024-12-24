BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (2)
	[t1].[RowNumber],
	[n].[PersonID]
FROM
	(
		SELECT TOP (@take)
			[r].[PersonID] as [ID],
			ROW_NUMBER() OVER(ORDER BY (
				SELECT
					N'unordered'
			)) as [RowNumber]
		FROM
			[Person] [r]
		ORDER BY
			[r].[FirstName]
	) [t1]
		INNER JOIN [Person] [n] ON [t1].[ID] = [n].[PersonID]
WHERE
	[n].[PersonID] = 2

