﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[p].[ParentID]
FROM
	[Child] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [p].[ParentID]
	)
GROUP BY
	[p].[ParentID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2

SELECT
	[p].[ParentID]
FROM
	[Child] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [t]
		WHERE
			[t].[ParentID] = @id AND [t].[ParentID] = [p].[ParentID]
	)
GROUP BY
	[p].[ParentID]

