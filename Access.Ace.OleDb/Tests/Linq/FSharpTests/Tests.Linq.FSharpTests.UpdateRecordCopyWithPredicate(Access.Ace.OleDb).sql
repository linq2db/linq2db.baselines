-- Access.Ace.OleDb AccessOleDb
INSERT INTO [RecordSetterTable]
(
	[Id],
	[Number],
	[Text]
)
VALUES
(
	1,
	1,
	'before'
)

-- Access.Ace.OleDb AccessOleDb
UPDATE
	[RecordSetterTable] [row_1]
SET
	[row_1].[Text] = 'updated recently'
WHERE
	[row_1].[Number] = 1

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[RecordSetterTable] [r]
WHERE
	[r].[Id] = 1

