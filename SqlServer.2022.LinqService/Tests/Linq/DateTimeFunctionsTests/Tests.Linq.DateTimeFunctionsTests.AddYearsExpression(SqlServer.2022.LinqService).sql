BeforeExecute
-- SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	Convert(Date, DateAdd(year, @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

