BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue3791Table]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue3791Table]
(
	[Id]      Int            NOT NULL IDENTITY,
	[OtherId] NVarChar(255)      NULL,

	CONSTRAINT [PK_Issue3791Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue3791GuidTable]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[a_Association].[Id]
FROM
	[Issue3791Table] [t1]
		LEFT JOIN [Issue3791GuidTable] [a_Association] ON ([t1].[OtherId] = IIF([a_Association].[Id] IS NOT NULL, CStr([a_Association].[Id]), NULL))

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue3791Table]

