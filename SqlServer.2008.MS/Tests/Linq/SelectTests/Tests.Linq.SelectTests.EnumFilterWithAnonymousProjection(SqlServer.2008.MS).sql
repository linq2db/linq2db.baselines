-- SqlServer.2008.MS SqlServer.2008
SELECT
	[cb].[Id],
	[cb].[Name],
	[cb].[ContactEmail],
	[cb].[Enabled]
FROM
	[EnumClientRecord] [cb]
WHERE
	[cb].[ClientType] = N'Client'

