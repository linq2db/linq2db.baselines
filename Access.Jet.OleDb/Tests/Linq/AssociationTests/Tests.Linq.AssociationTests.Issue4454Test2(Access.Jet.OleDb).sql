BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4454Client]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4454Client]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4454Service]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4454Service]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[a_Client2].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client2] ON ([a_Client2].[Id] = [s].[IdClient] AND [s].[IdClient] IS NOT NULL)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4454Service]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4454Client]

