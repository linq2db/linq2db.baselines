BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	(
		SELECT
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_1].[ParentID] = 1
		UNION ALL
		SELECT
			[a_Parent_1].[ParentID],
			[a_Parent_1].[Value1]
		FROM
			[Child] [c_2]
				LEFT JOIN [Parent] [a_Parent_1] ON [c_2].[ParentID] = [a_Parent_1].[ParentID]
		WHERE
			[c_2].[ParentID] = 3
	) [p]
WHERE
	([p].[Value1] IS NULL OR [p].[Value1] <> 2)

