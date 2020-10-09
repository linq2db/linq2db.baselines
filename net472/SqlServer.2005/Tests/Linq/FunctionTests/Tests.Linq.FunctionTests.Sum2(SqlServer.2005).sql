BeforeExecute
-- SqlServer.2005

SELECT 
	(
		SELECT 
			Sum([c_1].[ParentID] * [c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 2
	)
FROM
	[Parent] [p]

