-- Access.Jet.Odbc AccessODBC
SELECT
	[m_1].[ParentID],
	[d_1].[21],
	[d_1].[22],
	[d_1].[31],
	[d_1].[32],
	[d_1].[33]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 2 OR [p].[ParentID] = 3
	) [m_1]
		INNER JOIN (
			SELECT
				SUM(IIF([d].[ChildID] = 21, [d].[ChildID], NULL)) as [21],
				SUM(IIF([d].[ChildID] = 22, [d].[ChildID], NULL)) as [22],
				SUM(IIF([d].[ChildID] = 31, [d].[ChildID], NULL)) as [31],
				SUM(IIF([d].[ChildID] = 32, [d].[ChildID], NULL)) as [32],
				SUM(IIF([d].[ChildID] = 33, [d].[ChildID], NULL)) as [33],
				[d].[ParentID]
			FROM
				[Child] [d]
			GROUP BY
				[d].[ParentID]
		) [d_1] ON ([d_1].[ParentID] = [m_1].[ParentID])

-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 2 OR [p].[ParentID] = 3

