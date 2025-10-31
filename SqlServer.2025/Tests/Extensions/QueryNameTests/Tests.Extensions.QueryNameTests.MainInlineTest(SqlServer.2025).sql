BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT /* Main */
	[p].[ParentID],
	[p].[Value1],
	[t1].[Count_1]
FROM
	(
		SELECT /* Inline */
			[c_1].[ParentID],
			COUNT(*) as [Count_1]
		FROM
			[Child] [c_1]
		GROUP BY
			[c_1].[ParentID]
	) [t1],
	[Parent] [p]
WHERE
	[p].[ParentID] = [t1].[ParentID]

