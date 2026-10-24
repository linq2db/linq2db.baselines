-- SqlServer.2022
DELETE [t1]
FROM
	[Issue5975TableTwos] [t1]



-- SqlServer.2022
DELETE [t1]
FROM
	[Issue5975TableOnes] [t1]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (Size = 4000), @p3='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue5975TableOnes] ([Id], [FromDate], [Name], [ToDate])
VALUES (@p0, @p1, @p2, @p3);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (Size = 4000), @p3='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue5975TableOnes] ([Id], [FromDate], [Name], [ToDate])
VALUES (@p0, @p1, @p2, @p3);


Parameters:
@p4='?' (DbType = Int32), @p5='?' (Size = 4000), @p6='?' (DbType = DateTime2), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue5975TableTwos] ([Id], [Code], [FromDate], [TableOneId], [ToDate])
VALUES (@p4, @p5, @p6, @p7, @p8);


-- SqlServer.2022
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



