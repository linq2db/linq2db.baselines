﻿BeforeExecute
-- SqlServer.2016
DECLARE @p Decimal(6, 3)
SET     @p = 123.456

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[DecimalDataType] = @p

