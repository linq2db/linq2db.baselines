-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 42

INSERT INTO [OptionNullableElemTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value  -- Int32
SET     @Value = NULL

INSERT INTO [OptionNullableElemTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[OptionNullableElemTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Value]
FROM
	[OptionNullableElemTable] [r]
WHERE
	[r].[Id] = 2
LIMIT 2

