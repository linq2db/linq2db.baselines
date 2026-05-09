-- Access.Ace.Odbc AccessODBC

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

-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	IIF([r].[FirstName] IS NULL, '', [r].[FirstName]) + ' ' + IIF([r].[LastName] IS NULL, '', [r].[LastName])
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	IIF([r_1].[FirstName] IS NULL, '', [r_1].[FirstName]) + ' ' + IIF([r_1].[LastName] IS NULL, '', [r_1].[LastName])
FROM
	[Issue3323Table] [r_1]

