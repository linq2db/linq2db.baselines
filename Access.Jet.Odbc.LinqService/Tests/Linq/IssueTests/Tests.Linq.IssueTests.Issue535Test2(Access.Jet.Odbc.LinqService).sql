BeforeExecute
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
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	IIF([q].[Enabled] IS NULL, False, [q].[Enabled])
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE ? OR [q].[ContactEmail] LIKE ?)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [CustomerBase]

