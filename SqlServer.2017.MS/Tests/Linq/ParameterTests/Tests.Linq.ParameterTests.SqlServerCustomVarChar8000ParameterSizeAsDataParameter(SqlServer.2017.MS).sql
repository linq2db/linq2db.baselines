﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarcharDataType] = @p AND [t].[VarcharDataType] IS NOT NULL

