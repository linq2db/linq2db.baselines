﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3360Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3360Table]
(
	[Id]  Int     NOT NULL,
	[Str] VarChar     NULL,

	CONSTRAINT [PK_Issue3360Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[Id],
	CStr('str1')
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str2')
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[Id],
	CStr('str2')
FROM
	[Issue3360Table] [p]
UNION ALL
SELECT
	[p_1].[Id],
	CStr('str1')
FROM
	[Issue3360Table] [p_1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3360Table]

