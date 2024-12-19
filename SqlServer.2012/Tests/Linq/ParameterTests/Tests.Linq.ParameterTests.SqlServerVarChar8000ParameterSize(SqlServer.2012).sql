BeforeExecute
-- SqlServer.2012
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarcharDataType] = @p

