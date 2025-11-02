-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = NOT [t1].[Value]

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = True

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

