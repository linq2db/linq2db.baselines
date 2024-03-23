BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	DateValue(DateAdd('d', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

