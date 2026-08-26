-- SqlServer.2008
SELECT
	[parent_1].[ParentID],
	[parent_1].[Value1]
FROM
	[Parent] [parent_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [child_1]
		WHERE
			[child_1].[ParentID] = [parent_1].[ParentID] AND [child_1].[ParentID] > 3
	)

