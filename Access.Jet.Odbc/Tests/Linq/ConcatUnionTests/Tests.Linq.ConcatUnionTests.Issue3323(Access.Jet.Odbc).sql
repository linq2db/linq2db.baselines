BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3323Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue3323Table]
(
	[Id]       Int           NOT NULL,
	[FistName] NVarChar(255)     NULL,
	[LastName] NVarChar(255)     NULL,
	[Text]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue3323Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Text],
	[t1].[FistName] + ' ' + [t1].[LastName]
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	[t2].[FistName] + ' ' + [t2].[LastName]
FROM
	[Issue3323Table] [t2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue3323Table]

