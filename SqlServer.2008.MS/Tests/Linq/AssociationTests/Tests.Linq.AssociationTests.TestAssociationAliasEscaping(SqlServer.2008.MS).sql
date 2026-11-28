-- SqlServer.2008.MS SqlServer.2008
SELECT
	[c_1].[ChildID],
	[testaLыi_asParent].[Value1]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [testaLыi_asParent] ON [c_1].[ParentID] = [testaLыi_asParent].[ParentID]

