-- SqlServer.2019
DELETE [t1]
FROM
	[Issue5975TableTwos] [t1]



-- SqlServer.2019
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


-- SqlServer.2019
INSERT INTO [Issue5975TableOnes]
(
	[Id],
	[FromDate],
	[Name]
)
VALUES
(
	3,
	SYSUTCDATETIME(),
	N'test'
)



SELECT [i].[Id], [i].[FromDate], [i].[Name], [i].[ToDate]
FROM [Issue5975TableOnes] AS [i]
WHERE [i].[Id] = 3


