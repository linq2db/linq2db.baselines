BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4671Entity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4671Entity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4671EntityTMP]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [Issue4671EntityTMP]
(
	[Value]
)
VALUES
(
	2
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671EntityTMP] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4671EntityTMP]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4671Entity]

