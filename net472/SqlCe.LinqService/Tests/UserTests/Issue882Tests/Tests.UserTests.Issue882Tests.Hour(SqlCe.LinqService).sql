BeforeExecute
-- SqlCe

SELECT 
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

