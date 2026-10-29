BeginTransactionAsync
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [BatchRow]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [BatchRow]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[BatchRow] [t1]

