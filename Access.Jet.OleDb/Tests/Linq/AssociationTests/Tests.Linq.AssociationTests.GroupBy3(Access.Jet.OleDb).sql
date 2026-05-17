-- Access.Jet.OleDb AccessOleDb

SELECT DISTINCT
	DatePart('yyyy', [a_Types].[DateTimeValue])
FROM
	[Parent] [g_1]
		LEFT JOIN [LinqDataTypes] [a_Types] ON ([g_1].[ParentID] = [a_Types].[ID])

