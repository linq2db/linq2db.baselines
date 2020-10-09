BeforeExecute
-- SqlCe

SELECT 
	DatePart(millisecond, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

