BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	(
		SELECT
			Sum([a_Children].[ParentID] * [a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 2 AND [p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

