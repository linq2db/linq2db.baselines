﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @month Integer -- Int32
SET     @month = 10

SELECT
	DateSerial(2010 + [t].[ID], CVar(@month), 1)
FROM
	[LinqDataTypes] [t]

