-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[m_1].[Value1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent1].[ParentID],
			[a_Parent1].[Value1]
		FROM
			[Child] [t1]
				INNER JOIN [Parent] [a_Parent1] ON ([t1].[ParentID] = [a_Parent1].[ParentID])
	) [m_1],
	[Child] [d]
		INNER JOIN [Parent] [a_Parent1_1] ON ([d].[ParentID] = [a_Parent1_1].[ParentID])
WHERE
	[m_1].[ParentID] = [a_Parent1_1].[ParentID] AND [m_1].[Value1] IS NULL

-- Access.Jet.Odbc AccessODBC

SELECT DISTINCT
	[a_Parent1].[ParentID],
	[a_Parent1].[Value1]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [a_Parent1] ON ([t1].[ParentID] = [a_Parent1].[ParentID])

