-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue4671EntityTMP] PRIMARY KEY CLUSTERED ([Id])
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Issue4671EntityTMP]
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
	[Issue4671Entity] [t1]

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671EntityTMP] [t1]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4671EntityTMP]

