BeforeExecute
-- SqlServer.2016

SELECT
	[p_2].[ParentID_1],
	[p_2].[Value1]
FROM
	(
		SELECT
			[p_1].[ParentID_1],
			[p_1].[Value1]
		FROM
			(
				SELECT
					[t1].[ParentID_1],
					[t1].[Value1]
				FROM
					(
						SELECT
							[c_1].[ParentID],
							[p].[ParentID] as [ParentID_1],
							[p].[Value1]
						FROM
							[Parent] [p] WITH (NoLock),
							[Child] [c_1] WITH (NoLock)
					) [t1],
					[Child] [c1] WITH (Index(IX_ChildIndex), NoLock)
				WHERE
					[t1].[ParentID] = [t1].[ParentID_1] AND [c1].[ParentID] = [t1].[ParentID_1]
			) [p_1]
				CROSS JOIN [Parent] [p1] WITH (HoldLock)
				CROSS JOIN [Child] [c_2] WITH (NoWait)
				LEFT JOIN [Parent] [a_Parent] WITH (NoWait) ON [c_2].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_2].[ParentID] = [p_1].[ParentID_1] AND [a_Parent].[ParentID] > 0 AND
			[p1].[ParentID] = [p_1].[ParentID_1]
	) [p_2],
	[Child] [c_3]
WHERE
	[c_3].[ParentID] = [p_2].[ParentID_1]

