-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	COUNT(*),
	1 + MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

