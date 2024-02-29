BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int16
SET     @ID = 0

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	Cast([t1].[ID] as INTEGER)
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			Cast([_].[smallintDataType] as INTEGER) = @ID
	) [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int16
SET     @ID = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	Cast([t1].[ID] as INTEGER)
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			Cast([_].[smallintDataType] as INTEGER) = @ID
	) [t1]

