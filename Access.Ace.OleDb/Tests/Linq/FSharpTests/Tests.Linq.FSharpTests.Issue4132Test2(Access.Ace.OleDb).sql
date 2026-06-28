-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Issue4132Table]
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
	[Issue4132Table] [row_1]
SET
	[row_1].[Id] = [row_1].[Id],
	[row_1].[Number] = [row_1].[Number],
	[row_1].[Text] = 'updated recently'
WHERE
	[row_1].[Number] = 1

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1

