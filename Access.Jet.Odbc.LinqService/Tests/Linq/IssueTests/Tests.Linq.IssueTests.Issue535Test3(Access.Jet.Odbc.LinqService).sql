﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [CustomerBase]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [CustomerBase]
(
	[Id]           Int            NOT NULL IDENTITY,
	[ClientType]   NChar(6)       NOT NULL,
	[Name]         NVarChar(255)      NULL,
	[ContactEmail] NVarChar(255)      NULL,
	[Enabled]      Bit                NULL,

	CONSTRAINT [PK_CustomerBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC

DROP TABLE [CustomerBase]

