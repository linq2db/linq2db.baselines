﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p VarBinary(3) -- Binary
SET     @p = 0x000102

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[BinaryDataType] = ? AND [t].[BinaryDataType] IS NOT NULL

