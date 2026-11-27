-- Access.Jet.OleDb AccessOleDb
INSERT INTO [CalculatedColumnSetTable]
(
	[Id],
	[FirstName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id],
	IIF([r].[FirstName] IS NULL, '', [r].[FirstName]) + ' ' + IIF([r].[LastName] IS NULL, '', [r].[LastName])
FROM
	[CalculatedColumnSetTable] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[CalculatedColumnSetTable] [r_1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[CalculatedColumnSetTable] [r]
UNION ALL
SELECT
	[r_1].[Id],
	IIF([r_1].[FirstName] IS NULL, '', [r_1].[FirstName]) + ' ' + IIF([r_1].[LastName] IS NULL, '', [r_1].[LastName])
FROM
	[CalculatedColumnSetTable] [r_1]

