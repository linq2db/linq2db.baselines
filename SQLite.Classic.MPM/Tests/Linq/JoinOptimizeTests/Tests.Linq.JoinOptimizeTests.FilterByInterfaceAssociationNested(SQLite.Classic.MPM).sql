-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @clientName NVarChar(3) -- String
SET     @clientName = 'Abc'

SELECT
	[a_Client].[Name]
FROM
	[BillPosition] [position_1]
		INNER JOIN [ClientBill] [a_Bill] ON [position_1].[IdBill] = [a_Bill].[Id]
		INNER JOIN [BillClient] [a_Client] ON [a_Bill].[IdClient] = [a_Client].[Id]
WHERE
	[a_Client].[Name] = @clientName

