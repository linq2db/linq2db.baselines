BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	(
		SELECT
			[x].[FirstName],
			[x].[PersonID] as [ID],
			[x].[LastName],
			[x].[MiddleName],
			[x].[Gender],
			ROW_NUMBER() OVER (ORDER BY [x].[PersonID] DESC) as [RN]
		FROM
			[Person] [x]
		WHERE
			[x].[FirstName] LIKE N'J%' ESCAPE N'~'
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)
ORDER BY
	[t1].[ID] DESC

