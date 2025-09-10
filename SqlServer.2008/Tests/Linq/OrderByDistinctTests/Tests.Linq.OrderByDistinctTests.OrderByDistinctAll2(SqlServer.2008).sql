BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[ID],
	[t1].[LastName],
	[t1].[FirstName]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			[r].[LastName],
			[r].[FirstName],
			ROW_NUMBER() OVER (ORDER BY [r].[FirstName]) as [RN]
		FROM
			[Person] [r]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[FirstName]

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

