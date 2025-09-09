BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = [p].[ParentID] AND ([a_Parent].[Value1] = [p].[Value1] OR [a_Parent].[Value1] IS NULL AND [p].[Value1] IS NULL)
	), 1, 0)
FROM
	[Parent] [p]

