﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x01

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarBinaryDataType] = @p

