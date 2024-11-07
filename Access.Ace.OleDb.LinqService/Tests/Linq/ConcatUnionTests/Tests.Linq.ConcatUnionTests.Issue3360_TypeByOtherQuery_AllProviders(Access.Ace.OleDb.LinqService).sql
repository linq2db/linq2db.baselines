BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3360Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue3360Table]
(
	[Id]  Int     NOT NULL,
	[Str] VarChar     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[Id],
	[p].[Str]
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str')
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[Id],
	CStr('str')
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	[p_1].[Str]
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3360Table]

