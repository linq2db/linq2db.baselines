BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CustomerBase]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CustomerBase]
(
	[Id]           INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ClientType]   NChar(6)       NOT NULL,
	[Name]         NVarChar(255)      NULL,
	[ContactEmail] NVarChar(255)      NULL,
	[Enabled]      Bit                NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @filter_1 NVarChar(6) -- String
SET     @filter_1 = '%test%'
DECLARE @filter_2 NVarChar(6) -- String
SET     @filter_2 = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	Coalesce([q].[Enabled], 0)
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE @filter_1 ESCAPE '~' OR [q].[ContactEmail] LIKE @filter_2 ESCAPE '~')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CustomerBase]

