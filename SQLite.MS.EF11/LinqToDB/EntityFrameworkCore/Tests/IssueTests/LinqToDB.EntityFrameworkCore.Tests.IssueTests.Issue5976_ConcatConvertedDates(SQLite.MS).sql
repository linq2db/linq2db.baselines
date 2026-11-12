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



