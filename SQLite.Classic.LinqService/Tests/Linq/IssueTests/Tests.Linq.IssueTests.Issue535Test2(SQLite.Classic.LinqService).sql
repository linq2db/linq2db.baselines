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
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 NVarChar(6) -- String
SET     @filter_1 = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	[q].[Enabled]
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE @filter ESCAPE '~' OR [q].[ContactEmail] LIKE @filter_1 ESCAPE '~')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CustomerBase]

