BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @month Integer -- Int32
SET     @month = 1

SELECT
	DateSerial(2010 + [t].[ID], CVar(@month), 1)
FROM
	[LinqDataTypes] [t]

