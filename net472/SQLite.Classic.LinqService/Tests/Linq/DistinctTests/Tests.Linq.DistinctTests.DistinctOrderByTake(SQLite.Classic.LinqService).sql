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

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @F1  -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '2'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @F1  -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '3'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @F1  -- Int32
SET     @F1 = 5
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '5'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @F1  -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '2'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @F1  -- Int32
SET     @F1 = 4
DECLARE @F2 NVarChar(1) -- String
SET     @F2 = '4'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[F2]
FROM
	(
		SELECT DISTINCT
			[_].[F1],
			[_].[F2]
		FROM
			[DistinctOrderByTable] [_]
		ORDER BY
			[_].[F1] DESC
	) [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DistinctOrderByTable]

