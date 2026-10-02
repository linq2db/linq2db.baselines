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
SELECT
	[t2].[Code],
	[t1].[FromDate],
	[t1].[ToDate]
FROM
	[Issue5975TableTwos] [t2]
		LEFT JOIN [Issue5975TableOnes] [t1] ON [t2].[TableOneId] = [t1].[Id]
UNION ALL
SELECT
	[t2_1].[Code],
	[t2_1].[FromDate],
	[t2_1].[ToDate]
FROM
	[Issue5975TableTwos] [t2_1]



