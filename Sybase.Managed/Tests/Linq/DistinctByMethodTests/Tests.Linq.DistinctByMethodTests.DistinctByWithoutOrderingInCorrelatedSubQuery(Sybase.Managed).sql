-- Sybase.Managed Sybase
SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] = [m_1].[ParentID]

-- Sybase.Managed Sybase
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

