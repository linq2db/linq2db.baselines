BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Table404One]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Table404Two]
(
	[Id]           INTEGER NOT NULL,
	[Usage]        INTEGER NOT NULL,
	[FirstTableId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Table404Two]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Table404One]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Table404One]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Table404Two]
(
	[Id]           INTEGER NOT NULL,
	[Usage]        INTEGER NOT NULL,
	[FirstTableId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Table404Two]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Table404One]

