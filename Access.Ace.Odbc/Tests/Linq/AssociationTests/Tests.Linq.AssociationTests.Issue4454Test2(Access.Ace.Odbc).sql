﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4454Client]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4454Client]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4454Service]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4454Service]
(
	[Id]       Int NOT NULL,
	[IdClient] Int     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[a_Client2].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client2] ON ([a_Client2].[Id] = [s].[IdClient])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4454Service]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4454Client]

