-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[client].[Name]
FROM
	[Issue4790Bill] [bill]
		INNER JOIN [Issue4790ClientWithKey] [client] ON [bill].[IdClient] = [client].[Id]
WHERE
	[client].[Name] = @clientName

