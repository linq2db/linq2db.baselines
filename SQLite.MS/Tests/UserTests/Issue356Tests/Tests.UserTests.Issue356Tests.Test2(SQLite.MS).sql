﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[x].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [x]
		INNER JOIN (
			SELECT
				[c_2].[ParentID],
				[c_2].[ChildID]
			FROM
				(
					SELECT
						[c_1].[ParentID],
						[c_1].[ChildID]
					FROM
						[Child] [c_1]
					UNION
					SELECT
						[t1].[ParentID],
						[t1].[ChildID]
					FROM
						[Child] [t1]
				) [c_2]
			ORDER BY
				[c_2].[ParentID]
			LIMIT 10
		) [t2] ON [t2].[ParentID] = [x].[ParentID]
ORDER BY
	[x].[ParentID]
LIMIT @take

