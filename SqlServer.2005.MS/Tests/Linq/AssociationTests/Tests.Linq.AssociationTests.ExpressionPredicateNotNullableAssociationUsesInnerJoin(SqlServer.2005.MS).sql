-- SqlServer.2005.MS SqlServer.2005
SELECT
	[a_Client1].[Name]
FROM
	[ExpressionAssociationService] [s]
		INNER JOIN [ExpressionAssociationClient] [a_Client1] ON [s].[IdClient] = [a_Client1].[Id]

