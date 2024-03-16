﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN (
			SELECT
				Max([max_1].[ChildID]) as [Max_1]
			FROM
				[Child] [max_1]
			GROUP BY
				[max_1].[ParentID]
		) [t1] ON [ch].[ChildID] = [t1].[Max_1]

