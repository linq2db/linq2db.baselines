BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	DatePart('s', DateAdd('s', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

