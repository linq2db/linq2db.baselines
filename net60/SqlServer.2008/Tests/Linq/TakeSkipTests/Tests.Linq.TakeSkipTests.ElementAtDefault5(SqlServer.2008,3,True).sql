BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take_1 Int -- Int32
SET     @take_1 = 4

SELECT
	[t2].[FirstName],
	[t2].[PersonID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[t1].[FirstName],
			[t1].[PersonID],
			[t1].[LastName],
			[t1].[MiddleName],
			[t1].[Gender],
			ROW_NUMBER() OVER (ORDER BY [t1].[LastName]) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= @take_1

