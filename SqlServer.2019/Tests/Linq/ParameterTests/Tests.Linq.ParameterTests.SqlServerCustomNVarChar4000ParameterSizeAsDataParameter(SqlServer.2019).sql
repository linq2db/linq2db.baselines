﻿BeforeExecute
-- SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'abc'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[NVarcharDataType] = @p AND [t].[NVarcharDataType] IS NOT NULL

