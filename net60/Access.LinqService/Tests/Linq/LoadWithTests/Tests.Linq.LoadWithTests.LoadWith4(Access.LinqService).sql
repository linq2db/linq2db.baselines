BeforeExecute
-- Access AccessOleDb

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON ([lw_Parent].[ParentID] = [detail].[ParentID])

BeforeExecute
-- Access AccessOleDb

SELECT
	[t2].[Count_1],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[t1].[ParentID]
			FROM
				[GrandChild] [t1]
			GROUP BY
				[t1].[ParentID]
		) [t2] ON ([p].[ParentID] = [t2].[ParentID])

