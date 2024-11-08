BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4613Service]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue4613Service]
(
	[IdContract] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4613Contract]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue4613Contract]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[Issue4613Service] [servProj]
		INNER JOIN [Issue4613Contract] [contract] ON ([servProj].[IdContract] = [contract].[Id])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4613Contract]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4613Service]

