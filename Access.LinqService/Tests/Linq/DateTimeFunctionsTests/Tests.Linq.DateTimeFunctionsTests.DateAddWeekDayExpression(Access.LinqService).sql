BeforeExecute
-- Access AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	DateAdd('w', @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

