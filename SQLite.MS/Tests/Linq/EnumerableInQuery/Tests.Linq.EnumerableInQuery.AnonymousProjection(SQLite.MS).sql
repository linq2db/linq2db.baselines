﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t1]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN (
			SELECT NULL [ParentID], NULL [ParentID0] WHERE 1 = 0
			UNION ALL
			VALUES
				(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7)
			) [d] ON [d].[ParentID] = [m_1].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

