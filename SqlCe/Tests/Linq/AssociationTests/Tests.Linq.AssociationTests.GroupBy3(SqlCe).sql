-- SqlCe

SELECT DISTINCT
	DatePart(year, [a_Types].[DateTimeValue]) as [Key_1]
FROM
	[Parent] [g_1]
		LEFT JOIN [LinqDataTypes] [a_Types] ON [g_1].[ParentID] = [a_Types].[ID]

