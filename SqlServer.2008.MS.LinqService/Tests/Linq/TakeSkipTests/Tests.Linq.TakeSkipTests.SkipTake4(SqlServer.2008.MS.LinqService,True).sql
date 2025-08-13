BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 7
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 2

SELECT
	[t4].[ParentID],
	[t4].[ChildID]
FROM
	(
		SELECT
			[t3].[ParentID],
			[t3].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t3].[ChildID]) as [RN]
		FROM
			(
				SELECT
					[t2].[ChildID],
					[t2].[ParentID]
				FROM
					(
						SELECT
							[t1].[ChildID],
							[t1].[ParentID],
							ROW_NUMBER() OVER (ORDER BY [t1].[ChildID] DESC) as [RN]
						FROM
							[Child] [t1]
					) [t2]
				WHERE
					[t2].[RN] > @skip AND [t2].[RN] <= (@skip + @take)
			) [t3]
	) [t4]
WHERE
	[t4].[RN] > @skip_1
ORDER BY
	[t4].[ChildID]

