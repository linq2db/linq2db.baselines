BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NOT NULL AND [p].[Value1] <> 1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

