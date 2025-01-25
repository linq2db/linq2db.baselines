BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CustomerBase]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CustomerBase]
(
	[Id]           INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ClientType]   NChar(6)       NOT NULL,
	[Name]         NVarChar(255)      NULL,
	[ContactEmail] NVarChar(255)      NULL,
	[Enabled]      Bit                NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	[cb].[Enabled]
FROM
	[CustomerBase] [cb]
WHERE
	[cb].[ClientType] = 'Client'

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CustomerBase]

