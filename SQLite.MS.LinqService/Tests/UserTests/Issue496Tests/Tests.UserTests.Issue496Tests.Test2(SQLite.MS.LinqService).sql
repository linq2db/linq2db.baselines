BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

