BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	DateValue(DateAdd('y', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

