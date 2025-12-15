-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2]
FROM
	[ValueConversion] [t]
WHERE
	[t].[Value2] IS NULL

