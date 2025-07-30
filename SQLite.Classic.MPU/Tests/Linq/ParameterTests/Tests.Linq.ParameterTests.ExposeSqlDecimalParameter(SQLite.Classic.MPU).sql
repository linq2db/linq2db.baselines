BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Decimal(6, 3)
SET     @p = 123.456

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[DecimalDataType] = @p

