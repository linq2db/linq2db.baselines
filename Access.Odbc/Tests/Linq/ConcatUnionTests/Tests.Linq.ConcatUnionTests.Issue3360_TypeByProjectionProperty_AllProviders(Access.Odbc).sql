BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3360Table]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue3360Table]
(
	[Id]  Int     NOT NULL,
	[Str] VarChar     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[Id],
	'str1'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	'str2'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[Id],
	'str2'
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	'str1'
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue3360Table]

