BeforeExecute
-- SqlServer.2012

SELECT
	DatePart(year, [a_Types].[DateTimeValue])
FROM
	[Parent] [selectParam]
		LEFT JOIN [LinqDataTypes] [a_Types] ON [selectParam].[ParentID] = [a_Types].[ID]
GROUP BY
	DatePart(year, [a_Types].[DateTimeValue])

