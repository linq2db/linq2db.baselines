BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[p_1].[cond],
	[p_1].[ParentID],
	[p_1].[Value1]
FROM
	(
		SELECT
			[a_Parent].[ParentID] as [cond],
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
		FROM
			[Child] [p]
				LEFT JOIN [Parent] [a_Parent] ON [p].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[p].[ParentID] = 1
		UNION ALL
		SELECT
			[a_Parent_1].[ParentID] as [cond],
			[a_Parent_1].[ParentID],
			[a_Parent_1].[Value1]
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent_1] ON [c_1].[ParentID] = [a_Parent_1].[ParentID]
		WHERE
			[c_1].[ParentID] = 3
	) [p_1]
WHERE
	[p_1].[Value1] <> 2 OR [p_1].[Value1] IS NULL OR [p_1].[cond] IS NULL

