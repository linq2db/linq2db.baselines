﻿BeforeExecute
--  SqlServer.2014
DECLARE @p VarChar -- AnsiString
SET     @p = Tests.Linq.ParameterTests+VarChar

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarcharDataType] = @p

