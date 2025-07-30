BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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

