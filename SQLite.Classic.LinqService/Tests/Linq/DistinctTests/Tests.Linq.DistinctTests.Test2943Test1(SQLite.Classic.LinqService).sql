BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DistinctOrderByTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DistinctOrderByTable]
(
	[Id] INTEGER       NOT NULL,
	[F1] INTEGER       NOT NULL,
	[F2] NVarChar(255)     NULL,
	[F3] INTEGER       NOT NULL,

	CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @F1  -- Int32
SET     @F1 = 8
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '8'
DECLARE @F3  -- Int32
SET     @F3 = 5

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3  -- Int32
SET     @F3 = 3

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @F1  -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '2'
DECLARE @F3  -- Int32
SET     @F3 = 1

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3  -- Int32
SET     @F3 = 4

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3  -- Int32
SET     @F3 = 7

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @F1  -- Int32
SET     @F1 = 5
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '5'
DECLARE @F3  -- Int32
SET     @F3 = 2

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @F1  -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '2'
DECLARE @F3  -- Int32
SET     @F3 = 8

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @F1  -- Int32
SET     @F1 = 4
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '4'
DECLARE @F3  -- Int32
SET     @F3 = 6

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT DISTINCT
	[r].[F1],
	[r].[F2]
FROM
	[DistinctOrderByTable] [r]
ORDER BY
	[r].[F1] DESC,
	[r].[F2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DistinctOrderByTable]

