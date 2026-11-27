-- SqlServer.Contained SqlServer.2025
SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	[cb].[Enabled]
FROM
	[EnumClientRecord] [cb]
WHERE
	[cb].[ClientType] = N'Client'

