BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Child] [cp]
		INNER JOIN [Parent] [c_1] ON [cp].[ParentID] = [c_1].[ParentID]

