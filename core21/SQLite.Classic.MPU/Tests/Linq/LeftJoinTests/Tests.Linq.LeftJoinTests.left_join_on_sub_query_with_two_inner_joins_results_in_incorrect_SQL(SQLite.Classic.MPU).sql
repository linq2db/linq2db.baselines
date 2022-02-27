BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [A]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [B]
(
	[Id]  INTEGER NOT NULL,
	[AId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [C]
(
	[Id]  INTEGER NOT NULL,
	[BId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [A]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a_1].[Id],
	[t1].[bc],
	[t1].[Id],
	[t1].[Id_1]
FROM
	[A] [a_1]
		LEFT JOIN (
			SELECT
				[b_1].[AId] as [bc],
				[b_1].[Id],
				[c_1].[Id] as [Id_1]
			FROM
				[B] [b_1]
					INNER JOIN [C] [c_1] ON [b_1].[Id] = [c_1].[BId]
		) [t1] ON [a_1].[Id] = [t1].[bc]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [C]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [B]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [A]

