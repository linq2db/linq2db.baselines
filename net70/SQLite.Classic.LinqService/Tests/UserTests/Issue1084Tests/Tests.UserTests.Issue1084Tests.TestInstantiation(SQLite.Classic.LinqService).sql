BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_person]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [i1084_person]
(
	[Id]            INTEGER NOT NULL,
	[Number]        INTEGER NOT NULL,
	[StatusBitmask] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [i1084_student]
(
	[Id]            INTEGER       NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[joinedTable].[StatusBitmask]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [joinedTable] ON [k_1].[Id] = [joinedTable].[Id] AND Cast([k_1].[Number] as NVarChar(11)) = [joinedTable].[Number]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_person]

