-- Sybase.Managed Sybase
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		WHERE
			[t1].[ParentID] = 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] + @n = [d].[ParentID]

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1

