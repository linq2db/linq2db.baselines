-- Access.Jet.OleDb AccessOleDb
DECLARE @flag Boolean
SET     @flag = True

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	@flag IN ([t].[BoolValue])

