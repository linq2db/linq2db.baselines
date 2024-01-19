BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 7

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t1].[ChildID] DESC) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= @skip_1

BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 7

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [t1].[ChildID] DESC) as [RN]
		FROM
			[Child] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= @skip_1

