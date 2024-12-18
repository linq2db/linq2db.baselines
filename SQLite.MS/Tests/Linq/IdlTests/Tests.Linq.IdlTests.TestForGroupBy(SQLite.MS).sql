﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Key_1],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[x].[ChildID] as [Key_1]
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] IN (2)
	) [m_1]
		INNER JOIN [GrandChild] [d] ON [m_1].[Key_1] = [d].[ChildID] AND [m_1].[Key_1] IS NOT NULL AND [d].[ChildID] IS NOT NULL OR [m_1].[Key_1] IS NULL AND [d].[ChildID] IS NULL
WHERE
	[d].[ParentID] IN (2)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[ChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (2)
GROUP BY
	[x].[ChildID]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Key_1],
	[d].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[x].[ChildID] as [Key_1]
		FROM
			[GrandChild] [x]
		WHERE
			[x].[ParentID] IN (3)
	) [m_1]
		INNER JOIN [GrandChild] [d] ON [m_1].[Key_1] = [d].[ChildID] AND [m_1].[Key_1] IS NOT NULL AND [d].[ChildID] IS NOT NULL OR [m_1].[Key_1] IS NULL AND [d].[ChildID] IS NULL
WHERE
	[d].[ParentID] IN (3)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[ChildID]
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] IN (3)
GROUP BY
	[x].[ChildID]

