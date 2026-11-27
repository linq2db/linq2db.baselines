-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[serv].[Id]
FROM
	[JoinedServiceAdsl] [serv]
		INNER JOIN [JoinedServiceClient] [client] ON ([serv].[IdClient] = [client].[Id])

