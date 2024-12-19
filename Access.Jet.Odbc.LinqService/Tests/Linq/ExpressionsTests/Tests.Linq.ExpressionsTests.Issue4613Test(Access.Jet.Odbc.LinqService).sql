BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4613Service]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4613Service]
(
	[IdContract] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4613Contract]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4613Contract]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[Issue4613Service] [servProj]
		INNER JOIN [Issue4613Contract] [contract] ON ([servProj].[IdContract] = [contract].[Id])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4613Contract]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4613Service]

