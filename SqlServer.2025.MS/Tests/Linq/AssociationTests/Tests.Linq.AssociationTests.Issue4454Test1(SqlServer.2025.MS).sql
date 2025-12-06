-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[a_Client1].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client1] ON [s].[IdClient] = [a_Client1].[Id]

