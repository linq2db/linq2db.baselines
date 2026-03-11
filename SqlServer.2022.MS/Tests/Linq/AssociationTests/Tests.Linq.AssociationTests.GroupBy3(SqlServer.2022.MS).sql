-- SqlServer.2022.MS SqlServer.2022

SELECT DISTINCT
	DatePart(year, [a_Types].[DateTimeValue])
FROM
	[Parent] [g_1]
		LEFT JOIN [LinqDataTypes] [a_Types] ON [g_1].[ParentID] = [a_Types].[ID]

