﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3791Table]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue3791Table]
(
	[Id]      Int            NOT NULL IDENTITY,
	[OtherId] NVarChar(255)      NULL,

	CONSTRAINT [PK_Issue3791Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue3791GuidTable]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[a_Association].[Id]
FROM
	[Issue3791Table] [t1]
		LEFT JOIN [Issue3791GuidTable] [a_Association] ON (([t1].[OtherId] = CStr([a_Association].[Id]) OR [t1].[OtherId] IS NULL AND CStr([a_Association].[Id]) IS NULL))

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3791Table]

