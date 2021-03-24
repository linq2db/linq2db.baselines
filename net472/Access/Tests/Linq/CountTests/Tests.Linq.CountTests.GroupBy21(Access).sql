﻿BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1
DECLARE @n_1 Integer -- Int32
SET     @n_1 = 1

SELECT
	Count([t1].[ParentID])
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID],
			[ch].[ChildID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] + 2 > @n
	) [t2]
		LEFT JOIN (
			SELECT
				[ch_1].[ParentID],
				[ch_1].[ChildID]
			FROM
				[Child] [ch_1]
			WHERE
				[ch_1].[ParentID] < 2 AND [ch_1].[ParentID] + 2 > @n_1
			GROUP BY
				[ch_1].[ParentID],
				[ch_1].[ChildID]
		) [t1] ON (([t2].[ParentID] = [t1].[ParentID] + 1 AND [t2].[ChildID] = [t1].[ChildID]))
GROUP BY
	[t2].[ParentID],
	[t2].[ChildID]

