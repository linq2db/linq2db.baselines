BeforeExecute
-- SqlCe

SELECT
	DateAdd(hour, 226 / 3600000, DateAdd(millisecond, Convert(Int, 226) % 3600000, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SqlCe

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

