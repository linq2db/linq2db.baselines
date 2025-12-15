-- SqlServer.2008.MS SqlServer.2008

SELECT
	[i].[DocumentNo],
	[t1].[ApplicationId]
FROM
	[PropertyHistory] [i]
		OUTER APPLY (
			SELECT TOP (1)
				[a_CustomerApplication].[Id] as [ApplicationId]
			FROM
				[CustomerApplication] [a_CustomerApplication]
			WHERE
				[a_CustomerApplication].[Id] = CAST([i].[DocumentNo] AS Int)
		) [t1]

