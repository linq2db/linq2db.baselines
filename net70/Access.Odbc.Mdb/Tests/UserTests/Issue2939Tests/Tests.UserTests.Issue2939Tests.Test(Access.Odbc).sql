BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Adsl]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Adsl]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Client]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Client]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[adsl_1].[Id]
FROM
	[Adsl] [adsl_1]
		INNER JOIN [Client] [client_1] ON ([adsl_1].[IdClient] = [client_1].[Id])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Client]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Adsl]

