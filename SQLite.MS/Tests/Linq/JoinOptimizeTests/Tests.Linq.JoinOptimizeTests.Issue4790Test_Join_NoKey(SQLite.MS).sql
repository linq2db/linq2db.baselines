-- SQLite.MS SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[client_1].[Name]
FROM
	[Issue4790Bill] [bill]
		INNER JOIN [Issue4790Client] [client] ON [bill].[IdClient] = [client].[Id]
		INNER JOIN [Issue4790Client] [client_1] ON [bill].[IdClient] = [client_1].[Id]
WHERE
	[client].[Name] = @clientName

