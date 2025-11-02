-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	COUNT(*) as [COUNT_1],
	1 + MIN([g_1].[ChildID]) as [c1],
	MAX([g_1].[ChildID]) as [MAX_1]
FROM
	[Child] [g_1]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

