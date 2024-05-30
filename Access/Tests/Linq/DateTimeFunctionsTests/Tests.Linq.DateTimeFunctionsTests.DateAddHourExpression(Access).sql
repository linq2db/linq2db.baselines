BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	DatePart('h', DateAdd('h', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

