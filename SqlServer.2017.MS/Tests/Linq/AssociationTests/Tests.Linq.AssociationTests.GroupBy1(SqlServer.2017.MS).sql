-- SqlServer.2017.MS SqlServer.2017

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [g_1]
		LEFT JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[a_Parent].[ParentID],
	[a_Parent].[Value1]

