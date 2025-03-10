BeforeExecute
-- SQLite.MS SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[a_Client].[Name]
FROM
	[Issue4790Bill] [bill]
		INNER JOIN [Issue4790Client] [a_Client] ON [bill].[IdClient] = [a_Client].[Id]
WHERE
	[a_Client].[Name] = @clientName

