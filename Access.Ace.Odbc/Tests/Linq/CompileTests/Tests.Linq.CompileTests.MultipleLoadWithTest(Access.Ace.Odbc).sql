-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = ?
	) [m_1]
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = ?
	) [m_1]
		INNER JOIN [GrandChild] [d] ON ([m_1].[ParentID] = [d].[ParentID])

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

