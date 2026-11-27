-- SqlServer.2005.MS SqlServer.2005
SELECT
	[contract].[Id],
	[servProj].[IdContract]
FROM
	[ProjectionServiceTable] [servProj]
		INNER JOIN [ProjectionContractTable] [contract] ON [servProj].[IdContract] = [contract].[Id]

