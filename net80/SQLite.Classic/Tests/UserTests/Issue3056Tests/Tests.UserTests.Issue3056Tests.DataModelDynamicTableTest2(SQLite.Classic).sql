BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table_3056]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table_3056]
(
	[Id]          INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name]        VarChar(100)      NULL,
	[Description] VarChar(200)      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Table_3056]
(
	[Name],
	[Description]
)
VALUES
('n1','d0'),
('n2','d00')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table_3056]

