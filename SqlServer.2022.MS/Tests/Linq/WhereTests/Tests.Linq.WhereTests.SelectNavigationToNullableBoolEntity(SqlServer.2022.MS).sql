-- SqlServer.2022.MS SqlServer.2022
SELECT
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [verträge]
		LEFT JOIN [Contract] [a_Ref] ON [verträge].[FK] = [a_Ref].[Id]
WHERE
	[verträge].[FK] = 1

