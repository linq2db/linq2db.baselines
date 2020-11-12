BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Table404One]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

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
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 0

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
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 1

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
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

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
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Usage_1  -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

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
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 0

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
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Usage_2  -- Int32
SET     @Usage_2 = 1

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
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

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

