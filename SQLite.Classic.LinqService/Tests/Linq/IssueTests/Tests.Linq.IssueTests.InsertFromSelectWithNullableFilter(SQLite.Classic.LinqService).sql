BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int16
SET     @ID = 123
DECLARE @ID_1  -- Int16
SET     @ID_1 = 0

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	@ID,
	Cast([t1].[ID] as INTEGER)
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			Cast([_].[smallintDataType] as INTEGER) = @ID_1
	) [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int16
SET     @ID = 123
DECLARE @ID_1  -- Int16
SET     @ID_1 = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	@ID,
	Cast([t1].[ID] as INTEGER)
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			Cast([_].[smallintDataType] as INTEGER) = @ID_1
	) [t1]

