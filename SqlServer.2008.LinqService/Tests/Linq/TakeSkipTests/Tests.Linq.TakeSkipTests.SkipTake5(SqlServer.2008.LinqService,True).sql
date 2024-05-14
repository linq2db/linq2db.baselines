BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)

