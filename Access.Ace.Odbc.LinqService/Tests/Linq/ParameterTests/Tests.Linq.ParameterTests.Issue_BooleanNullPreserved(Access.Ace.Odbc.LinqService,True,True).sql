BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestBool]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestBool]
(
	[Id]    Int NOT NULL,
	[Value] Bit     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	False
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = NOT [t1].[Value]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = False

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestBool]

