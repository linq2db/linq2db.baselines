﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	Count([t1].[ParentID])
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] + 2 > ?
	) [t2]
		LEFT JOIN (
			SELECT
				[ch_1].[ParentID]
			FROM
				[Child] [ch_1]
			WHERE
				[ch_1].[ParentID] < 2 AND [ch_1].[ParentID] + 2 > ?
			GROUP BY
				[ch_1].[ParentID]
		) [t1] ON ([t2].[ParentID] = [t1].[ParentID] + 1)
GROUP BY
	[t2].[ParentID]

