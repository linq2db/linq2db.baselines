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

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(1),
(2)

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

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(1)

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

