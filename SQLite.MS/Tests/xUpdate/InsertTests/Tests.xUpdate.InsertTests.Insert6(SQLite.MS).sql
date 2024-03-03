﻿BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[Value1] = 11

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT
	[c_1].[ParentID] + 1000,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 11

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] = 11

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[Value1] = 11

