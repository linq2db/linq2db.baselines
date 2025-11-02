-- SqlServer.2014

SELECT
	[g_2].[Value1]
FROM
	(
		SELECT
			[a_Parent].[ParentID],
			COUNT(*) as [COUNT_1],
			[a_Parent].[Value1]
		FROM
			[GrandChild] [g_1]
				INNER JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
	) [g_2]
WHERE
	[g_2].[COUNT_1] > 2 AND [g_2].[ParentID] <> 1

