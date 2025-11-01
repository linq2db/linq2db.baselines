-- SqlServer.2017

SELECT /* Main */
	[p].[ParentID],
	[p].[Value1],
	[t1].[COUNT_1]
FROM
	(
		SELECT /* Inline */
			[c_1].[ParentID],
			COUNT(*) as [COUNT_1]
		FROM
			[Child] [c_1]
		GROUP BY
			[c_1].[ParentID]
	) [t1],
	[Parent] [p]
WHERE
	[p].[ParentID] = [t1].[ParentID]

