-- Access.Jet.OleDb AccessOleDb
UPDATE
	[InheritanceFilter] [t1]
SET
	[t1].[Child1Field] = 66
WHERE
	[t1].[Id] = 1

-- Access.Jet.OleDb AccessOleDb
INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field]
)
VALUES
(
	1,
	1,
	55
)

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

-- Access.Jet.OleDb AccessOleDb
UPDATE
	[InheritanceFilter] [t1]
SET
	[t1].[Child1Field] = 66
WHERE
	[t1].[Id] = 1

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

