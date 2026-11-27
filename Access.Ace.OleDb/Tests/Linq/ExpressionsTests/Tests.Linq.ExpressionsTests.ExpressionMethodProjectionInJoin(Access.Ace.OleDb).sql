-- Access.Ace.OleDb AccessOleDb
SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[ProjectionServiceTable] [servProj]
		INNER JOIN [ProjectionContractTable] [contract] ON ([servProj].[IdContract] = [contract].[Id])

