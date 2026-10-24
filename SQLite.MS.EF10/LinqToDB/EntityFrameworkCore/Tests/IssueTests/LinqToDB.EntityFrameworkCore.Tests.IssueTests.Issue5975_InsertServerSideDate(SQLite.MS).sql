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
INSERT INTO [Issue5975TableOnes]
(
	[Id],
	[FromDate],
	[Name]
)
VALUES
(
	3,
	CURRENT_TIMESTAMP,
	'test'
)



SELECT "i"."Id", "i"."FromDate", "i"."Name", "i"."ToDate"
FROM "Issue5975TableOnes" AS "i"
WHERE "i"."Id" = 3


