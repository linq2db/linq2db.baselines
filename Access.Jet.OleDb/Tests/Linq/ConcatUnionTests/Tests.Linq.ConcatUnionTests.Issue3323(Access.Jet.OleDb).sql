-- Access.Jet.OleDb AccessOleDb

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

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Text],
	[t1].[FirstName] + ' ' + [t1].[LastName]
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	[t2].[FirstName] + ' ' + [t2].[LastName]
FROM
	[Issue3323Table] [t2]

