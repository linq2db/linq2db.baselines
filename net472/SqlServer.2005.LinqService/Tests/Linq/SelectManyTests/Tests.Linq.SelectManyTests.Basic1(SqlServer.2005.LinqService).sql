BeforeExecute
-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [c_1]

