﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p VarChar(20) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarcharDataType] = @p AND [t].[VarcharDataType] IS NOT NULL

