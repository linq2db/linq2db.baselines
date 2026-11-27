-- SqlServer.2019.MS SqlServer.2019
SELECT
	[serv].[Id]
FROM
	[JoinedServiceAdsl] [serv]
		INNER JOIN [JoinedServiceClient] [client] ON [serv].[IdClient] = [client].[Id]

