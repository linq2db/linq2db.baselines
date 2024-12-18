BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [param]
				LEFT JOIN [Parent] [a_Parent] ON [param].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = [p].[ParentID] AND [a_Parent].[ParentID] IS NOT NULL AND
			([a_Parent].[Value1] = [p].[Value1] AND [a_Parent].[Value1] IS NOT NULL AND [p].[Value1] IS NOT NULL OR [a_Parent].[Value1] IS NULL AND [p].[Value1] IS NULL)
	), 1, 0)
FROM
	[Parent] [p]

