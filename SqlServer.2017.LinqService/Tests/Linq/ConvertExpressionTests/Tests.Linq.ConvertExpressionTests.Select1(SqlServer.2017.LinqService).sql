BeforeExecute
-- SqlServer.2017

SELECT
	(
		SELECT
			Sum([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1
	)
FROM
	[Parent] [p]

