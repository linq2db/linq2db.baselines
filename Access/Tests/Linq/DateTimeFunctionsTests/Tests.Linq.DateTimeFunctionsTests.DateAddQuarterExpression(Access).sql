BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	DateValue(DateAdd('q', @p, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

