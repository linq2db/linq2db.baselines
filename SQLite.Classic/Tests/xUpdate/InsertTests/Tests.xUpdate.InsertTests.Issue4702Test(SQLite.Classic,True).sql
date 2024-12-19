BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4702Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4702Table]
(
	[Id]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Text] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Max([Id]) FROM [Issue4702Table]

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4702Table]
(
	[Id],
	[Text]
)
VALUES
(1,'Text 1'),
(2,'Text 2')

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4702Table]
(
	[Text]
)
VALUES
(
	'Text 3'
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4702Table]

