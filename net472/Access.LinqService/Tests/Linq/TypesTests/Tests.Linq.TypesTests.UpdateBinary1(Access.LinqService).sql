﻿BeforeExecute
-- Access AccessOleDb
DECLARE @BinaryValue VarBinary(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	[LinqDataTypes] [t]
SET
	[t].[BinaryValue] = @BinaryValue
WHERE
	[t].[ID] = 1

