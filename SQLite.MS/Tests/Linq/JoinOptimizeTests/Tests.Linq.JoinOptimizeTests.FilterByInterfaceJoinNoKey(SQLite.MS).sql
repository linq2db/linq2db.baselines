-- SQLite.MS SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[client_1].[Name]
FROM
	[ClientBill] [bill]
		INNER JOIN [BillClient] [client] ON [bill].[IdClient] = [client].[Id]
		INNER JOIN [BillClient] [client_1] ON [bill].[IdClient] = [client_1].[Id]
WHERE
	[client].[Name] = @clientName

