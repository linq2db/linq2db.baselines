﻿Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

INSERT INTO "SkipModes" ("Id", "InsertOnly")
VALUES (@p0, @p1);


--  SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @InsertOnly  -- Int32
SET     @InsertOnly = 2

INSERT INTO [SkipModes]
(
	[Id],
	[InsertOnly]
)
VALUES
(
	@Id,
	@InsertOnly
)



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[InsertOnly],
	[t1].[UpdateOnly],
	[t1].[ReadOnly]
FROM
	[SkipModes] [t1]
ORDER BY
	[t1].[Id]



Parameters:
@p1='?' (DbType = Int32), @p0='?' (DbType = Int32)

UPDATE "SkipModes" SET "UpdateOnly" = @p0
WHERE "Id" = @p1;
SELECT changes();


--  SQLite.MS SQLite
DECLARE @UpdateOnly  -- Int32
SET     @UpdateOnly = 12
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[SkipModes]
SET
	[UpdateOnly] = @UpdateOnly
WHERE
	[SkipModes].[Id] = @Id



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[InsertOnly],
	[t1].[UpdateOnly],
	[t1].[ReadOnly]
FROM
	[SkipModes] [t1]
ORDER BY
	[t1].[Id]



