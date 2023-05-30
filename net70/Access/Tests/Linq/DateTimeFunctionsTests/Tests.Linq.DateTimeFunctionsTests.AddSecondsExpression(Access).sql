BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = -35

SELECT
	DateAdd('s', @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

