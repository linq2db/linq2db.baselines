BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4613Service]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4613Service]
(
	[IdContract] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4613Contract]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4613Contract]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[Issue4613Service] [servProj]
		INNER JOIN [Issue4613Contract] [contract] ON ([servProj].[IdContract] = [contract].[Id])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4613Contract]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4613Service]

