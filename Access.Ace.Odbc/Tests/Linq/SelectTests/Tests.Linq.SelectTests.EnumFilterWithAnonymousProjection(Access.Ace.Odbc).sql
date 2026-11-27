-- Access.Ace.Odbc AccessODBC
SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	[cb].[Enabled]
FROM
	[EnumClientRecord] [cb]
WHERE
	[cb].[ClientType] = 'Client'

