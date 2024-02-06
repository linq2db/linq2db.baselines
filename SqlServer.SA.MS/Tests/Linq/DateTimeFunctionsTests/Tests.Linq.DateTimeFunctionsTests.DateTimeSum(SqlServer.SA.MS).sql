BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID],
	Count(*),
	Sum(DateDiff_Big(millisecond, [t1].[DateTimeValue], DateAdd(day, 1, [t1].[DateTimeValue]))),
	Max(DateDiff_Big(millisecond, [t1].[DateTimeValue], DateAdd(day, 1, [t1].[DateTimeValue])))
FROM
	[LinqDataTypes] [t1]
GROUP BY
	[t1].[ID]

