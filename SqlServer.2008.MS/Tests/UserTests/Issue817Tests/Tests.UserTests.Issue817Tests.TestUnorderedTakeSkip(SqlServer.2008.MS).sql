BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t2].[c1]
FROM
	(
		SELECT
			1 as [c1],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			[Person] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

