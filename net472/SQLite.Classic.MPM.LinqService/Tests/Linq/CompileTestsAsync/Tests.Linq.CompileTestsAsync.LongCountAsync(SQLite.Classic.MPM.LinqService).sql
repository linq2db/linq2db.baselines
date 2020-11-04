BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AsyncDataTable]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 7

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 8

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 9

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

SELECT
	Count(*)
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [AsyncDataTable]

