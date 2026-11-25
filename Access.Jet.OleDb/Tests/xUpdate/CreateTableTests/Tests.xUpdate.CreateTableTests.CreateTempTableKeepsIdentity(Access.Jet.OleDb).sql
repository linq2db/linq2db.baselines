-- Access.Jet.OleDb AccessOleDb
CREATE TABLE [TempIdentityRowTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TempIdentityRowTMP] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.Jet.OleDb AccessOleDb
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- Access.Jet.OleDb AccessOleDb
INSERT INTO [TempIdentityRowTMP]
(
	[Value]
)
VALUES
(
	2
)

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRowTMP] [t1]

-- Access.Jet.OleDb AccessOleDb
DROP TABLE [TempIdentityRowTMP]

