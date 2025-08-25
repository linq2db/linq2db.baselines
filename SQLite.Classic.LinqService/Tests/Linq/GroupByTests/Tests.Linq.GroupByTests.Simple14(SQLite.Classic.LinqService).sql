﻿BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[m_1].[ParentID],
	[d_1].[Key_1]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN (
			SELECT
				[d].[ParentID] as [Key_1]
			FROM
				[Child] [d]
			GROUP BY
				[d].[ParentID]
		) [d_1] ON [m_1].[ParentID] = [d_1].[Key_1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

