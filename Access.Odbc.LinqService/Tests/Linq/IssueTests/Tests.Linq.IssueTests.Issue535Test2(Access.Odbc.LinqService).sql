BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [CustomerBase]

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	[q].[Enabled]
FROM
	[CustomerBase] [q]
WHERE
	([q].[Name] LIKE ? OR [q].[ContactEmail] LIKE ?) AND
	[q].[ClientType] = 'Client'

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [CustomerBase]

