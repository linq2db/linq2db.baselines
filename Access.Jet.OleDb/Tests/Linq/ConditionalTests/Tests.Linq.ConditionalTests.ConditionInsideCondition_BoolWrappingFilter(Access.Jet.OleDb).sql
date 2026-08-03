-- Access.Jet.OleDb AccessOleDb
SELECT
	IIF([s].[ParentID] MOD 2 = 0, [s].[ParentID] MOD 3 = 0, IIF([s].[ParentID] MOD 4 = 0, [s].[ParentID] > 0, [s].[ParentID] < 5))
FROM
	[Parent] [s]
WHERE
	IIF([s].[ParentID] MOD 2 = 0, [s].[ParentID] MOD 3 = 0, IIF([s].[ParentID] MOD 4 = 0, [s].[ParentID] > 0, [s].[ParentID] < 5))

-- Access.Jet.OleDb AccessOleDb
SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

