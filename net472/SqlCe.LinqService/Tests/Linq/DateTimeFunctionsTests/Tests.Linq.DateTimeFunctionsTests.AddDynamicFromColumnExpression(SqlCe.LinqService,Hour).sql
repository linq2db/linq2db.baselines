BeforeExecute
-- SqlCe

SELECT
	DateAdd(hour, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

