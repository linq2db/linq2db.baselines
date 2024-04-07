BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 5

SELECT
	DateAdd('d', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

