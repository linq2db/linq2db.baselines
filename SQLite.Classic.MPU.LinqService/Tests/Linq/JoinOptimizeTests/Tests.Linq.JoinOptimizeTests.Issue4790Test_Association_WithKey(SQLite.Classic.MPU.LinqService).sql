BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[a_KeyedClient].[Name]
FROM
	[Issue4790Bill] [bill]
		INNER JOIN [Issue4790ClientWithKey] [a_KeyedClient] ON [bill].[IdClient] = [a_KeyedClient].[Id]
WHERE
	[a_KeyedClient].[Name] = @clientName

