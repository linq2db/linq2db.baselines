BeforeExecute
-- SQLite.Classic SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[a_Client].[Name]
FROM
	[Issue4790Position] [position_1]
		INNER JOIN [Issue4790Bill] [a_Bill] ON [position_1].[IdBill] = [a_Bill].[Id]
		INNER JOIN [Issue4790Client] [a_Client] ON [a_Bill].[IdClient] = [a_Client].[Id]
WHERE
	[a_Client].[Name] = @clientName

