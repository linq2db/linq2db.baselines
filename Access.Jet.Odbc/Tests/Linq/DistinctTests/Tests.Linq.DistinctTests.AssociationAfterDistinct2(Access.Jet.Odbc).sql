-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[r_1].[ParentID_1] as [ParentID]
				FROM
					(
						SELECT DISTINCT
							[r].[ParentID],
							[r].[ChildID],
							[a_Parent].[ParentID] as [ParentID_1],
							[a_Parent].[Value1]
						FROM
							[Child] [r]
								LEFT JOIN [Parent] [a_Parent] ON ([r].[ParentID] = [a_Parent].[ParentID])
					) [r_1]
			) [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

-- Access.Jet.Odbc AccessODBC

SELECT
	[r_2].[ParentID],
	[r_2].[ChildID],
	[r_2].[ParentID_1],
	[r_2].[Value1],
	[r_2].[Count_1]
FROM
	(
		SELECT
			[r_1].[ParentID],
			[r_1].[ChildID],
			[r_1].[ParentID_1],
			[r_1].[Value1],
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [a_Children]
				WHERE
					[r_1].[ParentID_1] = [a_Children].[ParentID]
			) as [Count_1]
		FROM
			(
				SELECT DISTINCT
					[r].[ParentID],
					[r].[ChildID],
					[a_Parent].[ParentID] as [ParentID_1],
					[a_Parent].[Value1]
				FROM
					[Child] [r]
						LEFT JOIN [Parent] [a_Parent] ON ([r].[ParentID] = [a_Parent].[ParentID])
			) [r_1]
	) [r_2]
ORDER BY
	[r_2].[Count_1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[cond],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID] as [cond]
		FROM
			[Child] [t1]
				LEFT JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID])
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[cond] = [d].[ParentID])

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON ([t1].[ParentID] = [a_Parent].[ParentID])

