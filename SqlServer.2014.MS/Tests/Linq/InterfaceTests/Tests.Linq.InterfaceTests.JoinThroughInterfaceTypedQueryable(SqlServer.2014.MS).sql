-- SqlServer.2014.MS SqlServer.2014
SELECT
	[serv].[Id]
FROM
	[JoinedServiceAdsl] [serv]
		INNER JOIN [JoinedServiceClient] [client] ON [serv].[IdClient] = [client].[Id]

