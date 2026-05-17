-- SqlServer.2017.MS SqlServer.2017

SELECT
	[linked].[Id],
	[linked].[FK],
	[a_Ref].[Id],
	[a_Ref].[Bit01]
FROM
	[LinkedContracts] [linked]
		LEFT JOIN [Contract] [a_Ref] ON [linked].[FK] = [a_Ref].[Id]
WHERE
	[linked].[FK] = 1

