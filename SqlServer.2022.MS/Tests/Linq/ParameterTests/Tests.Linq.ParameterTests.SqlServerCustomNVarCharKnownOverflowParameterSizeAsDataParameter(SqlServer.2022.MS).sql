﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p NVarChar(4000) -- String
SET     @p = N'abcdeabcdeabcdeabcde1'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[NVarcharDataType] = @p

