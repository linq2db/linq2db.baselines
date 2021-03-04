BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 Double
SET     @p_1 = -35

SELECT
	DateAdd('s', ?, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

