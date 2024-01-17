BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 2

SELECT
	DateAdd('m', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

