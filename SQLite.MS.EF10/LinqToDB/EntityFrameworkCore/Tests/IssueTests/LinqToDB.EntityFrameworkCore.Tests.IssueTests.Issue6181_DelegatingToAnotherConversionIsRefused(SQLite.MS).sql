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
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (Size = 3), @p3='?' (DbType = DateTime), @p4='?' (DbType = DateTime), @p5='?' (DbType = DateTime), @p6='?' (DbType = DateTime), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime), @p9='?' (DbType = DateTime)

INSERT INTO "Issue6181TableTwos" ("Id", "ChainedDate", "Code", "FromDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (Size = 3), @p3='?' (DbType = DateTime), @p4='?' (DbType = DateTime), @p5='?' (DbType = DateTime), @p6='?' (DbType = DateTime), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime), @p9='?' (DbType = DateTime)

INSERT INTO "Issue6181TableTwos" ("Id", "ChainedDate", "Code", "FromDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9);


