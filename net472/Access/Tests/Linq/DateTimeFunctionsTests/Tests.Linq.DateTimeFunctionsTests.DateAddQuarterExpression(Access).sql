BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 Double
SET     @p_1 = -1

SELECT
	DateAdd('q', @p_1, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

