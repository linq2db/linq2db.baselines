-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.Jet.Odbc AccessODBC

UPDATE
	[TestBool] [t1]
SET
	[t1].[Value] = NOT [t1].[Value]

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.Jet.Odbc AccessODBC

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = False

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

