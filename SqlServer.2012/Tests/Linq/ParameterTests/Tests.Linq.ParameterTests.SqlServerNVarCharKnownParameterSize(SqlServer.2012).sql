﻿BeforeExecute
-- SqlServer.2012
DECLARE @p NVarChar(20) -- String
SET     @p = N'abc'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[NVarcharDataType] = @p AND [t].[NVarcharDataType] IS NOT NULL

