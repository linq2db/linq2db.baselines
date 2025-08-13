BeforeExecute
-- SQLite.MS SQLite
DECLARE @structValue  -- Int32
SET     @structValue = 13
DECLARE @classValue  -- Int32
SET     @classValue = 8

INSERT INTO [Table]
(
	[Id],
	[Struct],
	[Class]
)
VALUES
(
	1,
	@structValue,
	@classValue
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Struct],
	[t1].[Class]
FROM
	[Table] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite
DECLARE @structValue  -- Int32
SET     @structValue = 1
DECLARE @classValue  -- Int32
SET     @classValue = -8

UPDATE
	[Table]
SET
	[Id] = 1,
	[Struct] = @structValue,
	[Class] = @classValue

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Struct],
	[t1].[Class]
FROM
	[Table] [t1]
LIMIT 2

