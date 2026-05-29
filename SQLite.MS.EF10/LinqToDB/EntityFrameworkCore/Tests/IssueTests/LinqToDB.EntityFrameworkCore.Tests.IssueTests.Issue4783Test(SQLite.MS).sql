Parameters:
@p0='?' (Size = 4), @p1='?' (DbType = Int32), @p2='?' (Size = 4), @p3='?' (Size = 2), @p4='?' (Size = 4), @p5='?' (DbType = Int32), @p6='?' (Size = 4)

INSERT INTO "Issue4783Records" ("NullableStatusConverter", "NullableStatusRaw", "NullableStatusString", "Source", "StatusConverter", "StatusRaw", "StatusString")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6)
RETURNING "Id";


Parameters:
@p0='?' (Size = 6), @p1='?' (DbType = Int32), @p2='?' (Size = 6), @p3='?' (Size = 2), @p4='?' (Size = 6), @p5='?' (DbType = Int32), @p6='?' (Size = 6)

INSERT INTO "Issue4783Records" ("NullableStatusConverter", "NullableStatusRaw", "NullableStatusString", "Source", "StatusConverter", "StatusRaw", "StatusString")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6)
RETURNING "Id";


Parameters:
@p0='?', @p1='?' (DbType = Int32), @p2='?', @p3='?' (Size = 2), @p4='?' (Size = 6), @p5='?' (DbType = Int32), @p6='?' (Size = 6)

INSERT INTO "Issue4783Records" ("NullableStatusConverter", "NullableStatusRaw", "NullableStatusString", "Source", "StatusConverter", "StatusRaw", "StatusString")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6)
RETURNING "Id";


-- SQLite.MS SQLite

INSERT INTO [Issue4783Records]
(
	[Source],
	[StatusRaw],
	[StatusString],
	[StatusConverter],
	[NullableStatusRaw],
	[NullableStatusString],
	[NullableStatusConverter]
)
VALUES
('linq2db',0,'Open','Open',0,'Open','Open'),
('linq2db',1,'Closed','Closed',1,'Closed','Closed'),
('linq2db',1,'Closed','Closed',NULL,NULL,NULL)



-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Source],
	[t1].[StatusRaw],
	[t1].[StatusString],
	[t1].[StatusConverter],
	[t1].[NullableStatusRaw],
	[t1].[NullableStatusString],
	[t1].[NullableStatusConverter]
FROM
	[Issue4783Records] [t1]
ORDER BY
	[t1].[Id]



