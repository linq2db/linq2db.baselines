-- SqlServer.2016.MS SqlServer.2016
SELECT
	[serv].[Id]
FROM
	[JoinedServiceAdsl] [serv]
		INNER JOIN [JoinedServiceClient] [client] ON [serv].[IdClient] = [client].[Id]

