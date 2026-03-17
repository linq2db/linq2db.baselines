-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	COUNT(*) as [Count_1],
	1 + MIN([g_1].[ChildID]) as [Expr],
	MAX([g_1].[ChildID]) as [Max_1]
FROM
	[Child] [g_1]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

