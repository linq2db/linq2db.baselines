﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[_].[ParentID],
	[_].[ChildID]
FROM
	[Child] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [_1]
		WHERE
			[_1].[ParentID] = @id AND [_1].[ParentID] = [_].[ParentID]
	) AND
	[_].[ChildID] >= 0 AND [_].[ChildID] <= 100

