﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [ValuesTable]
(
	[Id]         BigInt  NOT NULL,
	[SomeValue1] INTEGER NOT NULL,
	[SomeValue2] INTEGER NOT NULL,

	CONSTRAINT [PK_ValuesTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int64
SET     @Id = 1
DECLARE @SomeValue1  -- Int32
SET     @SomeValue1 = 2
DECLARE @SomeValue2  -- Int32
SET     @SomeValue2 = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	@Id,
	@SomeValue1,
	@SomeValue2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @SomeValue1  -- Int32
SET     @SomeValue1 = 8

UPDATE
	[ValuesTable]
SET
	[SomeValue1] = @SomeValue1,
	[SomeValue2] = 4

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite
DECLARE @param  -- Int32
SET     @param = 8

UPDATE
	[ValuesTable]
SET
	[SomeValue2] = @param

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [ValuesTable]

