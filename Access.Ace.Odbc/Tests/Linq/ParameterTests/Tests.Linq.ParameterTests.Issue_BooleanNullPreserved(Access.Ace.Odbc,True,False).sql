-- Access.Ace.Odbc AccessODBC

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	True
)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.Ace.Odbc AccessODBC

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = NOT [t1].[Value]

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.Ace.Odbc AccessODBC

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = True

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

