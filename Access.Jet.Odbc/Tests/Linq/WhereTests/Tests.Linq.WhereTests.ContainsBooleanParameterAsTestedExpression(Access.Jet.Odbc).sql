-- Access.Jet.Odbc AccessODBC
DECLARE @flag Bit -- Boolean
SET     @flag = True

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	? IN ([t].[BoolValue])

