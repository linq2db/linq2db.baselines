﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @ParentID
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @ParentID
	)

