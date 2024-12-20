BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			SUM([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 1 AND [a_Children].[ParentID] < 10 AND
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

