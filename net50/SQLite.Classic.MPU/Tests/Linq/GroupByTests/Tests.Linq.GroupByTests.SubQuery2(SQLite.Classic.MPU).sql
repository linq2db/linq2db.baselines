﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	[ch_1].[ParentID]
FROM
	(
		SELECT
			[ch].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [ch]
	) [ch_1]
WHERE
	[ch_1].[ParentID] > @n
GROUP BY
	[ch_1].[ParentID]

