BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_insert_or_replace]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test_insert_or_replace]
(
	[id]         INTEGER       NOT NULL,
	[name]       NVarChar(255)     NULL,
	[created_by] NVarChar(255)     NULL,
	[updated_by] NVarChar(255)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [test_insert_or_replace] AS [t1]
(
	[id],
	[name]
)
VALUES
(
	1,
	'test'
)
ON CONFLICT ([id]) DO NOTHING

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [test_insert_or_replace] AS [t1]
(
	[id],
	[name]
)
VALUES
(
	1,
	'test'
)
ON CONFLICT ([id]) DO NOTHING

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_insert_or_replace]

