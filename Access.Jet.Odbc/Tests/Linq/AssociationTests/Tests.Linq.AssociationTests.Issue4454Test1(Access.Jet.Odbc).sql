﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4454Client]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4454Client]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4454Service]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4454Service]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[a_Client1].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client1] ON ([s].[IdClient] = [a_Client1].[Id])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4454Service]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4454Client]

