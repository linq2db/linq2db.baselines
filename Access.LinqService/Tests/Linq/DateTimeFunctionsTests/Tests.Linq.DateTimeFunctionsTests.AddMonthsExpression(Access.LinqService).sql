BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -2

SELECT
	DateValue(DateAdd('m', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

