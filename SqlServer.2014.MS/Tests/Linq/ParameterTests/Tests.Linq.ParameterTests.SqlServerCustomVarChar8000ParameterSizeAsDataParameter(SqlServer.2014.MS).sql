﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarcharDataType] = @p

