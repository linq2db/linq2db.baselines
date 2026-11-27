-- SqlServer.2016
SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[ProjectionServiceTable] [servProj]
		INNER JOIN [ProjectionContractTable] [contract] ON [servProj].[IdContract] = [contract].[Id]

