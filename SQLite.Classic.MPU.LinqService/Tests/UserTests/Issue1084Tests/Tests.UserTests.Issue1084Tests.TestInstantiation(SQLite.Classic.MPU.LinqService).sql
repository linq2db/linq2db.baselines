BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_person]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [i1084_person]
(
	[Id]            INTEGER NOT NULL,
	[Number]        INTEGER NOT NULL,
	[StatusBitmask] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Number  -- Int32
SET     @Number = 1
DECLARE @StatusBitmask  -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Number  -- Int32
SET     @Number = 2
DECLARE @StatusBitmask  -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [i1084_student]
(
	[Id]            INTEGER       NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Number NVarChar(1) -- String
SET     @Number = '1'
DECLARE @StatusBitmask  -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Number NVarChar(1) -- String
SET     @Number = '2'
DECLARE @StatusBitmask  -- Int32
SET     @StatusBitmask = 0

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[k_1].[StatusBitmask] & 128,
	[g_1].[StatusBitmask] & 128
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON [k_1].[Id] = [g_1].[Id] AND CAST([k_1].[Number] AS NVarChar(11)) = [g_1].[Number] AND [g_1].[Number] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_person]

