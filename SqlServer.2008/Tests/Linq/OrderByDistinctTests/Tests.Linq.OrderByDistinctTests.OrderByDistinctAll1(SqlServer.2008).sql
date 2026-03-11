-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[ID],
	[t1].[LastName]
FROM
	(
		SELECT
			[r_1].[ID],
			[r_1].[LastName],
			ROW_NUMBER() OVER (ORDER BY [r_1].[FirstName]) as [RN]
		FROM
			(
				SELECT DISTINCT
					[r].[FirstName],
					[r].[PersonID] as [ID],
					[r].[LastName],
					[r].[MiddleName],
					[r].[Gender]
				FROM
					[Person] [r]
			) [r_1]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

-- SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

