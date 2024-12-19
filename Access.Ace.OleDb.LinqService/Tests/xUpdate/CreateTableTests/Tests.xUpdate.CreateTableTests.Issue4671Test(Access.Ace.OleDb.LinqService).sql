BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4671Entity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue4671Entity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671EntityTMP] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4671EntityTMP]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4671Entity]

