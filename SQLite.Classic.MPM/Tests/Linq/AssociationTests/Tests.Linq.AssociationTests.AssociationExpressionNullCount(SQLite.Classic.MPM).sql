BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullParent]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NotNullParent]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [NotNullParent]
(
	[ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NotNullChild]
(
	[ParentID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [NotNullChild]
(
	[ParentID]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[NotNullParent] [p]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullChild]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [NotNullParent]

