BeforeExecute
-- SqlServer.2022

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] = [p].[ParentID] AND
			CAST([a_Children].[ChildID] AS Decimal) <> 0
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

