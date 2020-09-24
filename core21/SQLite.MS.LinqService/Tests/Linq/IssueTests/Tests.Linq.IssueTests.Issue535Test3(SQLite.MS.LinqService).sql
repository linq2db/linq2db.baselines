﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [CustomerBase]
(
	[Id]           INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[ClientType]   NChar          NOT NULL,
	[Name]         NVarChar(255)      NULL,
	[ContactEmail] NVarChar(255)      NULL,
	[Enabled]      Bit                NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	Coalesce([cb].[Enabled], 0)
FROM
	[CustomerBase] [cb]
WHERE
	[cb].[ClientType] = 'Client'

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [CustomerBase]

