﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NotNullParent]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 2

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [NotNullChild]
(
	[ParentID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(
	@ParentID
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_ChildOuter].[ParentID]
FROM
	[NotNullParent] [p]
		LEFT JOIN [NotNullChild] [a_ChildOuter] ON ([p].[ID] = [a_ChildOuter].[ParentID])
ORDER BY
	[p].[ID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullParent]

