-- SqlServer.SA.MS SqlServer.2019
SELECT
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [verträge]
		LEFT JOIN [Contract] [a_Ref] ON [verträge].[FK] = [a_Ref].[Id]
WHERE
	[verträge].[FK] = 1

