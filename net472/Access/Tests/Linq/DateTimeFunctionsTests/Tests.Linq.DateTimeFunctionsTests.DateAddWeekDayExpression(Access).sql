BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	DateAdd('w', @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

