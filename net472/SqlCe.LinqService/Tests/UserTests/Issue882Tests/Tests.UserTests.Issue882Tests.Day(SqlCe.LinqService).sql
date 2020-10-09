BeforeExecute
-- SqlCe

SELECT 
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

