﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
LIMIT @n

