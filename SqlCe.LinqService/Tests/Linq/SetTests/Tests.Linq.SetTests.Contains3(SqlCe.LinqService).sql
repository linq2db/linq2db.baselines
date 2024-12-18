BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [param]
				LEFT JOIN [Parent] [a_Parent] ON [param].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = [p].[ParentID] AND [a_Parent].[ParentID] IS NOT NULL AND
			([a_Parent].[Value1] = [p].[Value1] AND [a_Parent].[Value1] IS NOT NULL AND [p].[Value1] IS NOT NULL OR [a_Parent].[Value1] IS NULL AND [p].[Value1] IS NULL)
	)

