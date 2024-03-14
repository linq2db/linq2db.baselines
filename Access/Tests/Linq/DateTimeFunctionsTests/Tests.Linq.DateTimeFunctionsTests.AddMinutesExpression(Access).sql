BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -8

SELECT
	DatePart('n', DateAdd('n', CVar(@p), [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

