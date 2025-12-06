-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2]
FROM
	[ValueConversion] [t]
WHERE
	[t].[Value2] IS NULL

