﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x0102

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarBinaryDataType] = @p AND [t].[VarBinaryDataType] IS NOT NULL

