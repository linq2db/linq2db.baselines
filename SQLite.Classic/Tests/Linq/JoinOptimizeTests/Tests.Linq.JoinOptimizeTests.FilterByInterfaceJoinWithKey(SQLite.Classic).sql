-- SQLite.Classic SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[client].[Name]
FROM
	[ClientBill] [bill]
		INNER JOIN [BillClientWithKey] [client] ON [bill].[IdClient] = [client].[Id]
WHERE
	[client].[Name] = @clientName

