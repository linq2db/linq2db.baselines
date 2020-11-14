BeforeExecute
-- SqlServer.2008
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 1
DECLARE @skip_1_1 Int -- Int32
SET     @skip_1_1 = 8
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t3].[ParentID],
	[t3].[ChildID]
FROM
	(
		SELECT
			[t2_1].[ParentID],
			[t2_1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t2_1].[ChildID]) as [RN]
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
					[t2].[RN] > @skip_1 AND [t2].[RN] <= @skip_1_1
			) [t2_1]
	) [t3]
WHERE
	[t3].[RN] > @skip

