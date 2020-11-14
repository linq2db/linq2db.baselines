BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1],
	[p].[Value1_1]
FROM
	(
		SELECT
			IIF(([q].[ParentID] IS NOT NULL OR [q].[Value1] IS NOT NULL), [q].[ParentID], NULL) as [c1],
			[q].[Value1],
			[a_Parent].[Value1] as [Value1_1],
			[q].[ParentID]
		FROM
			[Parent] [q]
				INNER JOIN [Child] [c_1] ON [c_1].[ParentID] = [q].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
	) [p]
WHERE
	(([p].[c1] > 0 OR [p].[Value1] > 0) OR [p].[Value1_1] > 0)

