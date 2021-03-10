BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	DatePart('yyyy', [a_Types].[DateTimeValue])
FROM
	[Parent] [selectParam]
		LEFT JOIN [LinqDataTypes] [a_Types] ON ([selectParam].[ParentID] = [a_Types].[ID])
GROUP BY
	DatePart('yyyy', [a_Types].[DateTimeValue])

