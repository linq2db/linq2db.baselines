BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table1]
(
	[Field1] INTEGER   NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Foeld2] NChar(1)      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[current_1].[Field1],
	[previous].[Field1]
FROM
	[Table1] [current_1],
	[Table1] [previous]
WHERE
	[current_1].[Foeld2] = [previous].[Foeld2] OR [current_1].[Foeld2] IS NULL AND [previous].[Foeld2] IS NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1]

