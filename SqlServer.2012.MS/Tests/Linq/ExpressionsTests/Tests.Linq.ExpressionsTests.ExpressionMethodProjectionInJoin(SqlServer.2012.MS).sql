-- SqlServer.2012.MS SqlServer.2012
SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[ProjectionServiceTable] [servProj]
		INNER JOIN [ProjectionContractTable] [contract] ON [servProj].[IdContract] = [contract].[Id]

