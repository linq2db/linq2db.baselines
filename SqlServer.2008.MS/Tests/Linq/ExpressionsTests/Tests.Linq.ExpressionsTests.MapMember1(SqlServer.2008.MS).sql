BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ChildID] > 0 AND [p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

