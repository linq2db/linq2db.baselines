BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Adsl]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Adsl]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Client]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Client]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[serv].[Id]
FROM
	[Adsl] [serv]
		INNER JOIN [Client] [client_1] ON ([serv].[IdClient] = [client_1].[Id])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Client]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Adsl]

