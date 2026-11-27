-- SqlServer.2017.MS SqlServer.2017
SELECT
	[a_Client2].[Name]
FROM
	[ExpressionAssociationService] [s]
		INNER JOIN [ExpressionAssociationClient] [a_Client2] ON [a_Client2].[Id] = [s].[IdClient]

