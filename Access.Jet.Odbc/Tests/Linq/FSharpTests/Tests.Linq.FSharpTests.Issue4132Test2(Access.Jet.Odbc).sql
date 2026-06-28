-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

UPDATE
	[Issue4132Table] [row_1]
SET
	[row_1].[Id] = [row_1].[Id],
	[row_1].[Number] = [row_1].[Number],
	[row_1].[Text] = 'updated recently'
WHERE
	[row_1].[Number] = 1

-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1

