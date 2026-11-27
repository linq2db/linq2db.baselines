-- SqlServer.2019.MS SqlServer.2019
SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[ProjectionServiceTable] [servProj]
		INNER JOIN [ProjectionContractTable] [contract] ON [servProj].[IdContract] = [contract].[Id]

