-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Elapsed  -- Int64
SET     @Elapsed = 5400

INSERT INTO [DynamicDurationRow]
(
	[Id],
	[Elapsed]
)
VALUES
(
	@Id,
	@Elapsed
)

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Elapsed]
FROM
	[DynamicDurationRow] [t1]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	CAST([r].[Elapsed] AS Float) / 60
FROM
	[DynamicDurationRow] [r]
LIMIT 2

