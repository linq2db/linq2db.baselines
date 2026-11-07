-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Binary(3)
SET     @p = X'000102'

SELECT
	[t].[decimalDataType],
	[t].[binaryDataType],
	[t].[varbinaryDataType],
	[t].[varcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[binaryDataType] = @p

