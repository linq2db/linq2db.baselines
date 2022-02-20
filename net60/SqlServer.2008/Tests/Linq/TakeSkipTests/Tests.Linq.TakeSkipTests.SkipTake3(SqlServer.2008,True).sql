BeforeExecute
-- SqlServer.2008
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int -- Int32
SET     @skip_3 = 8

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t1].[ChildID]) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip_2 AND [t2].[RN] <= @skip_3

BeforeExecute
-- SqlServer.2008
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int -- Int32
SET     @skip_3 = 8

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t1].[ChildID]) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip_2 AND [t2].[RN] <= @skip_3

