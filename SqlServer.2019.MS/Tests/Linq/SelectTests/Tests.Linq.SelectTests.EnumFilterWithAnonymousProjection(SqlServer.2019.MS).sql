-- SqlServer.2019.MS SqlServer.2019
SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	[cb].[Enabled]
FROM
	[EnumClientRecord] [cb]
WHERE
	[cb].[ClientType] = N'Client'

