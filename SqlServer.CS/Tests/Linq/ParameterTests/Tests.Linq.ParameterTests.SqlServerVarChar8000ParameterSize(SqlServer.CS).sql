-- SqlServer.CS SqlServer.2025
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[decimalDataType],
	[t].[binaryDataType],
	[t].[varbinaryDataType],
	[t].[varcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varcharDataType] = @p

