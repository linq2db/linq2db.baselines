-- SqlServer.2005.MS SqlServer.2005
SELECT
	[a_Client2].[Name]
FROM
	[ExpressionAssociationService] [s]
		INNER JOIN [ExpressionAssociationClient] [a_Client2] ON [a_Client2].[Id] = [s].[IdClient]

