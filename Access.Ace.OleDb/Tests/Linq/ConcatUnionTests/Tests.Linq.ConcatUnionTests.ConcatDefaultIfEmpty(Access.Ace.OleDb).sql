-- Access.Ace.OleDb AccessOleDb

SELECT
	0 as [projection__set_id__],
	[t1].[ParentID],
	[t1].[ParentID] as [ParentID_1],
	[t1].[ChildID]
FROM
	(
		SELECT
			(
				SELECT TOP 1
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) as [ParentID],
			(
				SELECT TOP 1
					[a_Children_1].[ChildID]
				FROM
					[Child] [a_Children_1]
				WHERE
					[p].[ParentID] = [a_Children_1].[ParentID]
			) as [ChildID],
			[p].[ParentID] as [ParentID_1]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[ParentID_1] = 1
UNION ALL
SELECT
	1 as [projection__set_id__],
	IIF(False, 0, NULL) as [ParentID],
	IIF(False, 0, NULL) as [ParentID_1],
	IIF(False, 0, NULL) as [ChildID]
FROM
	[Parent] [p_1]
WHERE
	[p_1].[ParentID] <> 1

-- Access.Ace.OleDb AccessOleDb

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

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

