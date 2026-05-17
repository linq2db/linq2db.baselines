-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Issue3323Table]
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

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Text],
	IIF([t1].[FirstName] IS NULL, '', [t1].[FirstName]) + ' ' + IIF([t1].[LastName] IS NULL, '', [t1].[LastName])
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	IIF([t2].[FirstName] IS NULL, '', [t2].[FirstName]) + ' ' + IIF([t2].[LastName] IS NULL, '', [t2].[LastName])
FROM
	[Issue3323Table] [t2]

