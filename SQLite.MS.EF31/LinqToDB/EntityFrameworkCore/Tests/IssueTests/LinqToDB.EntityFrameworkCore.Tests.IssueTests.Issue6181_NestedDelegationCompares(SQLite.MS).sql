-- SQLite.MS SQLite
DELETE FROM
	[Issue6181TableTwos]



-- SQLite.MS SQLite
DELETE FROM
	[Issue6181TableOnes]



Parameters:
@p0='?', @p1='?', @p2='?', @p3='?', @p4='?' (Size = 3), @p5='?'

INSERT INTO "Issue6181TableOnes" ("Id", "ChainedOn", "CreatedOn", "FromDate", "Name", "ToDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);


Parameters:
@p6='?', @p7='?', @p8='?', @p9='?' (Size = 3), @p10='?', @p11='?', @p12='?', @p13='?', @p14='?', @p15='?', @p16='?', @p17='?', @p18='?'

INSERT INTO "Issue6181TableTwos" ("Id", "CastDate", "ChainedDate", "Code", "CountedDate", "FromDate", "GatedDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14, @p15, @p16, @p17, @p18);


Parameters:
@p0='?', @p1='?', @p2='?', @p3='?' (Size = 3), @p4='?', @p5='?', @p6='?', @p7='?', @p8='?', @p9='?', @p10='?', @p11='?', @p12='?'

INSERT INTO "Issue6181TableTwos" ("Id", "CastDate", "ChainedDate", "Code", "CountedDate", "FromDate", "GatedDate", "HeldDate", "OtherDate", "OverriddenDate", "TableOneId", "ToDate", "TypedOverriddenDate")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12);


-- SQLite.MS SQLite
SELECT
	[t2].[Code]
FROM
	[Issue6181TableTwos] [t2]
		INNER JOIN [Issue6181TableOnes] [t1] ON [t2].[TableOneId] = [t1].[Id]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t2].[ChainedDate]) >= strftime('%Y-%m-%d %H:%M:%f', [t1].[ChainedOn])



