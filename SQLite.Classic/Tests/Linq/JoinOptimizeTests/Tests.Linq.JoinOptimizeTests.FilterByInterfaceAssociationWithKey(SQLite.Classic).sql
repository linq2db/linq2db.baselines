-- SQLite.Classic SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[a_KeyedClient].[Name]
FROM
	[ClientBill] [bill]
		INNER JOIN [BillClientWithKey] [a_KeyedClient] ON [bill].[IdClient] = [a_KeyedClient].[Id]
WHERE
	[a_KeyedClient].[Name] = @clientName

