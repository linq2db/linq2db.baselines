BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	COUNT(*),
	1 + MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

