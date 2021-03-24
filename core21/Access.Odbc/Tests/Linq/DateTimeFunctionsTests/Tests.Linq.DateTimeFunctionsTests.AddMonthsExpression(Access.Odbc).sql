BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Double
SET     @p_1 = -2

SELECT
	DateAdd('m', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

