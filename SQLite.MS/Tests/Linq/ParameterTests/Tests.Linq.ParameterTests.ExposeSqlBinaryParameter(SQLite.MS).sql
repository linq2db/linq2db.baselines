BeforeExecute
-- SQLite.MS SQLite
DECLARE @p Binary(3)
SET     @p = X'000102'

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[BinaryDataType] = @p

