BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	DateValue(DateAdd('w', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

