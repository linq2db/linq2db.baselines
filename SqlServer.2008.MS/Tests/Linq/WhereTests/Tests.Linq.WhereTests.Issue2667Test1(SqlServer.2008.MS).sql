-- SqlServer.2008.MS SqlServer.2008

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

