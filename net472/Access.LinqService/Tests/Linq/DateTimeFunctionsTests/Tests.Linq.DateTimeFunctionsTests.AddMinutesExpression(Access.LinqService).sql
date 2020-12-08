BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -8

SELECT
	DateAdd('n', @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

