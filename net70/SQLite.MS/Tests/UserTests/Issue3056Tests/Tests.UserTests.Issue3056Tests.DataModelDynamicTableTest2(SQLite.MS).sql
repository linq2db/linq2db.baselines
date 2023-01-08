BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table_3056]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Table_3056]
(
	[Id]          INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name]        VarChar(100)      NULL,
	[Description] VarChar(200)      NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Table_3056]
(
	[Description],
	[Name]
)
VALUES
('d0','n1'),
('d00','n2')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table_3056]

