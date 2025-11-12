-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[Value1],
			[p].[ParentID],
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) as [Count_1]
		FROM
			[Parent] [p]
	) [t1]
		INNER JOIN [Parent] [pp] ON [t1].[Value1] = [pp].[Value1]
ORDER BY
	[pp].[ParentID],
	[t1].[Count_1]

