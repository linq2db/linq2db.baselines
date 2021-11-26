BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[p_2].[ParentID],
	[p_2].[Value1]
FROM
	(
		SELECT
			[p_1].[ParentID],
			[p_1].[Value1]
		FROM
			(
				SELECT
					[p].[ParentID],
					[p].[Value1]
				FROM
					[Parent] [p] WITH (NoLock),
					[Child] [c_1] WITH (NoLock)
				WHERE
					[c_1].[ParentID] = [p].[ParentID]
			) [p_1]
				CROSS JOIN [Child] [c_2] WITH (NoWait)
				LEFT JOIN [Parent] [a_Parent] WITH (NoWait) ON [c_2].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_2].[ParentID] = [p_1].[ParentID] AND [a_Parent].[ParentID] > 0
	) [p_2],
	[Child] [c_3]
WHERE
	[c_3].[ParentID] = [p_2].[ParentID]

