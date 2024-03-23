BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	DateValue(DateAdd('ww', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

