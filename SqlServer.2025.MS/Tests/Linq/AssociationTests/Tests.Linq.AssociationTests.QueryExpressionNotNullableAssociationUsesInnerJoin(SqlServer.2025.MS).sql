-- SqlServer.2025.MS SqlServer.2025
SELECT
	[a_Client2].[Name]
FROM
	[ExpressionAssociationService] [s]
		INNER JOIN [ExpressionAssociationClient] [a_Client2] ON [a_Client2].[Id] = [s].[IdClient]

