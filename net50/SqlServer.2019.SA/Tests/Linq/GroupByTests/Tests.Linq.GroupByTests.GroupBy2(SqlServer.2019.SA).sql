BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Coalesce([selectParam].[Value1], [c_1].[ChildID])
FROM
	[Parent] [selectParam]
		INNER JOIN [Child] [c_1] ON [selectParam].[ParentID] = [c_1].[ParentID]
GROUP BY
	Coalesce([selectParam].[Value1], [c_1].[ChildID])

