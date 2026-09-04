-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1

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
			[p].[ParentID] = @p AND strftime('%Y-%m-%d %H:%M:%f', DATETIME('now', 'localtime')) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 00:00:00.000')
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND strftime('%Y-%m-%d %H:%M:%f', DATETIME('now', 'localtime')) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 00:00:00.000')

-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

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
			[p].[ParentID] = @p AND strftime('%Y-%m-%d %H:%M:%f', DATETIME('now', 'localtime')) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 00:00:00.000')
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND strftime('%Y-%m-%d %H:%M:%f', DATETIME('now', 'localtime')) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 00:00:00.000')

