BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[DoubleValue],
	[t1].[FloatValue]
FROM
	[ClassRealTypes] [t1]
WHERE
	[t1].[DoubleValue] = 1.7976931348623157E+308 AND [t1].[FloatValue] = 3.40282347E+38
UNION ALL
SELECT
	[t1_1].[Id],
	[t1_1].[DoubleValue],
	[t1_1].[FloatValue]
FROM
	[ClassRealTypes] [t1_1]
WHERE
	[t1_1].[DoubleValue] = -1.7976931348623157E+308 AND
	[t1_1].[FloatValue] = -3.40282347E+38

