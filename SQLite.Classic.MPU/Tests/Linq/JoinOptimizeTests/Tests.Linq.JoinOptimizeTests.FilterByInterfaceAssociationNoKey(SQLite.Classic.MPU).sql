-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[a_Client].[Name]
FROM
	[ClientBill] [bill]
		INNER JOIN [BillClient] [a_Client] ON [bill].[IdClient] = [a_Client].[Id]
WHERE
	[a_Client].[Name] = @clientName

