Parameters:
@p0='?' (Size = 4000), @p1='?' (DbType = Int32), @p2='?' (Size = 4000), @p3='?' (Size = 4000), @p4='?' (Size = 4000), @p5='?' (DbType = Int32), @p6='?' (Size = 4000)

SET NOCOUNT ON;
INSERT INTO [Issue4783Records] ([NullableStatusConverter], [NullableStatusRaw], [NullableStatusString], [Source], [StatusConverter], [StatusRaw], [StatusString])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6);
SELECT [Id]
FROM [Issue4783Records]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


Parameters:
@p0='?' (Size = 4000), @p1='?' (DbType = Int32), @p2='?' (Size = 4000), @p3='?' (Size = 4000), @p4='?' (Size = 4000), @p5='?' (DbType = Int32), @p6='?' (Size = 4000)

SET NOCOUNT ON;
INSERT INTO [Issue4783Records] ([NullableStatusConverter], [NullableStatusRaw], [NullableStatusString], [Source], [StatusConverter], [StatusRaw], [StatusString])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6);
SELECT [Id]
FROM [Issue4783Records]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


Parameters:
@p0='?' (Size = 4000), @p1='?' (DbType = Int32), @p2='?' (Size = 4000), @p3='?' (Size = 4000), @p4='?' (Size = 4000), @p5='?' (DbType = Int32), @p6='?' (Size = 4000)

SET NOCOUNT ON;
INSERT INTO [Issue4783Records] ([NullableStatusConverter], [NullableStatusRaw], [NullableStatusString], [Source], [StatusConverter], [StatusRaw], [StatusString])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6);
SELECT [Id]
FROM [Issue4783Records]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


INSERT ASYNC BULK [Issue4783Records](Source, StatusRaw, StatusString, StatusConverter, NullableStatusRaw, NullableStatusString, NullableStatusConverter)



-- SqlServer.2022

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



