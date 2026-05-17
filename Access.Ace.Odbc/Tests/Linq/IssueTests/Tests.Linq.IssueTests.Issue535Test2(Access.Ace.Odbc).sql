-- Access.Ace.Odbc AccessODBC
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter NVarChar(6) -- String
SET     @filter = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	IIF([q].[Enabled] IS NULL, False, [q].[Enabled])
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE ? OR [q].[ContactEmail] LIKE ?)

