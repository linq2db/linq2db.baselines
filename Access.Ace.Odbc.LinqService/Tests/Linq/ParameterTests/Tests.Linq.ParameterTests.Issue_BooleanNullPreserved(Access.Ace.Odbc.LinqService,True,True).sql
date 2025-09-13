BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

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
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

UPDATE
	[TestBool] [t1]
SET
	[t1].[Value] = NOT [t1].[Value]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = False

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

