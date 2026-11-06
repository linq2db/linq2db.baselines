-- SqlServer.2012
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	IIF((
		SELECT
			MAX([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[x].[ParentID] = [a_Children].[ParentID]
	) = 11, 0, 1) = 1

