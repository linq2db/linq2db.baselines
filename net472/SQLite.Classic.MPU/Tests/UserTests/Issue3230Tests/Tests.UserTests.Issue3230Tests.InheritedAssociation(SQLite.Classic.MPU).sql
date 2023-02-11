BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [GrandParent_3230]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [GrandParent_3230]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GrandParent_3230]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Parent_3230]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Parent_3230]
(
	[ID]            INTEGER NOT NULL,
	[GrandParentID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Parent_3230]
(
	[ID],
	[GrandParentID]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Child_3230]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Child_3230]
(
	[ID]       INTEGER NOT NULL,
	[ParentID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Child_3230]
(
	[ID],
	[ParentID]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[Child_3230] [t1]
		LEFT JOIN [Parent_3230] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ID]
		LEFT JOIN [GrandParent_3230] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[ParentID],
	[a_Parent].[ID],
	[a_Parent].[GrandParentID],
	[a_GrandParent].[ID]
FROM
	[Child_3230] [t1]
		LEFT JOIN [Parent_3230] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ID]
		LEFT JOIN [GrandParent_3230] [a_GrandParent] ON [a_Parent].[GrandParentID] = [a_GrandParent].[ID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Child_3230]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Parent_3230]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [GrandParent_3230]

