-- Access.Jet.OleDb AccessOleDb
DECLARE @filter VarWChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 VarWChar(6) -- String
SET     @filter_1 = '%test%'

SELECT
	[q].[Id],
	[q].[Name],
	[q].[ContactEmail],
	IIF([q].[Enabled] IS NULL, False, [q].[Enabled])
FROM
	[CustomerBase] [q]
WHERE
	[q].[ClientType] = 'Client' AND ([q].[Name] LIKE @filter OR [q].[ContactEmail] LIKE @filter_1)

