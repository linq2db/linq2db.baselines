-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 2

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
		WHERE
			[p].[ParentID] = @id AND
			[p].[ParentID] > 0 AND
			[p].[ParentID] < 1000 AND
			[p].[ParentID] <> -1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND
	[p].[ParentID] > 0 AND
	[p].[ParentID] < 1000 AND
	[p].[ParentID] <> -1

