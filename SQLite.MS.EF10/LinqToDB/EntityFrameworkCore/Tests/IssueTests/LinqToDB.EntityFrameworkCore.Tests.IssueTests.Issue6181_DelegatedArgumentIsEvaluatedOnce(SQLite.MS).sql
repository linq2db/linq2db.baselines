-- SQLite.MS SQLite
DELETE FROM
	[Issue6181TableTwos]



-- SQLite.MS SQLite
DELETE FROM
	[Issue6181TableOnes]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (DbType = DateTime), @p3='?' (DbType = DateTime), @p4='?' (Size = 3), @p5='?' (DbType = DateTime)

INSERT INTO "Issue6181TableOnes" ("Id", "ChainedOn", "CreatedOn", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (DbType = DateTime), @p3='?' (Size = 3), @p4='?' (DbType = DateTime), @p5='?' (DbType = DateTime), @p6='?' (DbType = DateTime), @p7='?' (DbType = DateTime), @p8='?' (DbType = DateTime), @p9='?' (DbType = DateTime), @p10='?' (DbType = Int32), @p11='?' (DbType = DateTime), @p12='?' (DbType = DateTime)

INSERT INTO "Issue6181TableTwos" ("Id", "CastDate", "ChainedDate", "Code", "CountedDate", "FromDate", "GatedDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (DbType = DateTime), @p3='?' (Size = 3), @p4='?' (DbType = DateTime), @p5='?' (DbType = DateTime), @p6='?' (DbType = DateTime), @p7='?' (DbType = DateTime), @p8='?' (DbType = DateTime), @p9='?' (DbType = DateTime), @p10='?' (DbType = Int32), @p11='?' (DbType = DateTime), @p12='?' (DbType = DateTime)

INSERT INTO "Issue6181TableTwos" ("Id", "CastDate", "ChainedDate", "Code", "CountedDate", "FromDate", "GatedDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12);


-- SQLite.MS SQLite
DECLARE @CountedDate  -- DateTime
SET     @CountedDate = '2020-01-01 11:00:00.000'

UPDATE
	[Issue6181TableTwos]
SET
	[CountedDate] = @CountedDate
WHERE
	[Issue6181TableTwos].[Id] = 1



-- SQLite.MS SQLite
SELECT
	[r].[CountedDate]
FROM
	[Issue6181TableTwos] [r]
WHERE
	[r].[Id] = 1
LIMIT 2



