-- SQLite.MS SQLite
DELETE FROM
	[Issue5975TableTwos]



-- SQLite.MS SQLite
DELETE FROM
	[Issue5975TableOnes]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (Size = 3), @p3='?' (DbType = DateTime)

INSERT INTO "Issue5975TableOnes" ("Id", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (Size = 5), @p3='?' (DbType = DateTime)

INSERT INTO "Issue5975TableOnes" ("Id", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (Size = 3), @p2='?' (DbType = DateTime), @p3='?' (DbType = Int32), @p4='?' (DbType = DateTime)

INSERT INTO "Issue5975TableTwos" ("Id", "Code", "FromDate", "TableOneId", "ToDate")
VALUES (@p0, @p1, @p2, @p3, @p4);


-- SQLite.MS SQLite
DECLARE @test  -- DateTime
SET     @test = '2026-06-06 02:01:01.000'

UPDATE
	[Issue5975TableOnes]
SET
	[FromDate] = CASE
		WHEN [Issue5975TableOnes].[FromDate] IS NOT NULL THEN @test
		ELSE CURRENT_TIMESTAMP
	END



SELECT "i"."Id", "i"."FromDate", "i"."Name", "i"."ToDate"
FROM "Issue5975TableOnes" AS "i"
ORDER BY "i"."Id"


