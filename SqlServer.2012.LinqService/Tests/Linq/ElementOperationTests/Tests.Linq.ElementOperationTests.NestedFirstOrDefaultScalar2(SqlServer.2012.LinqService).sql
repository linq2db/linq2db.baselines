BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[p].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
			WHERE
				[a_Parent].[ParentID] = [p].[ParentID] AND ([a_Parent].[Value1] = [p].[Value1] OR [a_Parent].[Value1] IS NULL AND [p].[Value1] IS NULL)
			ORDER BY
				[c_1].[ChildID] * [c_1].[ParentID] DESC
		) [t1]

