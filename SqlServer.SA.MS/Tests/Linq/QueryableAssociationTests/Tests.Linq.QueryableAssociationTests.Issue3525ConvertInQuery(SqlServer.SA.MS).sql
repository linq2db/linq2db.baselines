-- SqlServer.SA.MS SqlServer.2019

SELECT
	[i].[DocumentNo],
	(
		SELECT TOP (1)
			[a_CustomerApplication].[Id]
		FROM
			[CustomerApplication] [a_CustomerApplication]
		WHERE
			[a_CustomerApplication].[Id] = CAST([i].[DocumentNo] AS Int)
	)
FROM
	[PropertyHistory] [i]

