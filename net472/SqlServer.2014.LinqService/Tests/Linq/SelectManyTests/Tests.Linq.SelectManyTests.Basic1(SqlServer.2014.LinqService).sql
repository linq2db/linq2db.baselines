BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [c_1]

