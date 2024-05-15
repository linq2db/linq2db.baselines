BeforeExecute
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
	COUNT(*)
FROM
	[NotNullParent] [p]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [NotNullParent]

