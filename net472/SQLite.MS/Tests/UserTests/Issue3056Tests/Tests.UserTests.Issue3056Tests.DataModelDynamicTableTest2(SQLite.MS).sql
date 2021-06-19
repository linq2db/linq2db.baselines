BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Table_3056]
(
	[Id]          INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name]        VarChar(100)      NULL,
	[Description] VarChar(500)      NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Table_3056]
(
	[Name],
	[Description]
)
VALUES
('n1','d0'),
('n2','d00')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Table_3056]

