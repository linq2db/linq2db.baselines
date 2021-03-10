BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DateValue([selectParam].[DateTimeValue]),
	Count(*)
FROM
	[LinqDataTypes] [selectParam]
		INNER JOIN [Parent] [p] ON ([selectParam].[ID] = [p].[ParentID])
GROUP BY
	DateValue([selectParam].[DateTimeValue])

