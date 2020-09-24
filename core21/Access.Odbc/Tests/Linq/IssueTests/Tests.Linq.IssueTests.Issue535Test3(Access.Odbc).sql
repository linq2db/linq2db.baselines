BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [CustomerBase]
(
	[Id]           Int            NOT NULL IDENTITY,
	[ClientType]   NChar          NOT NULL,
	[Name]         NVarChar(255)      NULL,
	[ContactEmail] NVarChar(255)      NULL,
	[Enabled]      Bit                NULL,

	CONSTRAINT [PK_CustomerBase] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	Iif([cb].[Enabled] IS NULL, False, [cb].[Enabled])
FROM
	[CustomerBase] [cb]
WHERE
	[cb].[ClientType] = 'Client'

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [CustomerBase]

