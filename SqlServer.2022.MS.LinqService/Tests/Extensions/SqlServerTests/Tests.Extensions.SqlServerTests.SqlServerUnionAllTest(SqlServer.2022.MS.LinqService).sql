BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p]
UNION ALL
SELECT
	NULL,
	NULL,
	[a_Parent].[ParentID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [p_1]
		LEFT JOIN [Parent] [a_Parent] ON [p_1].[ParentID] = [a_Parent].[ParentID]
OPTION (RECOMPILE)

