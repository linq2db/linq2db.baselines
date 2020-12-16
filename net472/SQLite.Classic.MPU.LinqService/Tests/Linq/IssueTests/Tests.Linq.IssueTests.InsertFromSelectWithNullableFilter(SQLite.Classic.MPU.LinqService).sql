BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	[t1].[smallintDataType]
FROM
	(
		SELECT DISTINCT
			[c_1].[smallintDataType]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [c_1] ON [_].[smallintDataType] = [c_1].[intDataType]
		WHERE
			[_].[smallintDataType] IS NULL
	) [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	[t1].[smallintDataType]
FROM
	(
		SELECT DISTINCT
			[c_1].[smallintDataType]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [c_1] ON [_].[smallintDataType] = [c_1].[intDataType]
		WHERE
			[_].[smallintDataType] = @p_1
	) [t1]

