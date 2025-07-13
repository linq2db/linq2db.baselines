BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int64
SET     @Id = 1
DECLARE @SomeValue1  -- Int32
SET     @SomeValue1 = 2
DECLARE @SomeValue2  -- Int32
SET     @SomeValue2 = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	@Id,
	@SomeValue1,
	@SomeValue2
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]
LIMIT 2

