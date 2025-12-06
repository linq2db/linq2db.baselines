-- SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (2)
	[t1].[RowNumber],
	[r_1].[PersonID]
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
		INNER JOIN [Person] [r_1] ON [t1].[ID] = [r_1].[PersonID]
WHERE
	[r_1].[PersonID] = 2

