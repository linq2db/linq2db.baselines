BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Adsl]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Adsl]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Client]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Client]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[serv].[Id]
FROM
	[Adsl] [serv]
		INNER JOIN [Client] [client_1] ON ([serv].[IdClient] = [client_1].[Id])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Client]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Adsl]

