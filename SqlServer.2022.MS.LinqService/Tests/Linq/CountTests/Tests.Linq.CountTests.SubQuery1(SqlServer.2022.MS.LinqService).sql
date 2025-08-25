BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND CAST([a_Children].[ChildID] AS Decimal(18, 10)) <> 0
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

