-- SQLite.MS SQLite
DELETE FROM
	[Issue5975TableTwos]



-- SQLite.MS SQLite
DELETE FROM
	[Issue5975TableOnes]



Parameters:
@p0='?', @p1='?', @p2='?' (Size = 3), @p3='?'

INSERT INTO "Issue5975TableOnes" ("Id", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3);


Parameters:
@p0='?', @p1='?', @p2='?' (Size = 5), @p3='?'

INSERT INTO "Issue5975TableOnes" ("Id", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3);


Parameters:
@p4='?', @p5='?' (Size = 3), @p6='?', @p7='?', @p8='?'

INSERT INTO "Issue5975TableTwos" ("Id", "Code", "FromDate", "TableOneId", "ToDate")
VALUES (@p4, @p5, @p6, @p7, @p8);


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


