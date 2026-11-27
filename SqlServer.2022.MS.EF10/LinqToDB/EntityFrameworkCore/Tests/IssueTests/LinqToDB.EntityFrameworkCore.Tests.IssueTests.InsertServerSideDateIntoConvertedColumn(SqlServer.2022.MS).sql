-- SqlServer.2022
DELETE [t1]
FROM
	[Issue5975TableTwos] [t1]



-- SqlServer.2022
DELETE [t1]
FROM
	[Issue5975TableOnes] [t1]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (Size = 4000), @p3='?' (DbType = DateTime2), @p4='?' (DbType = Int32), @p5='?' (DbType = DateTime2), @p6='?' (Size = 4000), @p7='?' (DbType = DateTime2), @p8='?' (DbType = Int32), @p9='?' (Size = 4000), @p10='?' (DbType = DateTime2), @p11='?' (DbType = Int32), @p12='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue5975TableOnes] ([Id], [FromDate], [Name], [ToDate])
VALUES (@p0, @p1, @p2, @p3),
(@p4, @p5, @p6, @p7);
INSERT INTO [Issue5975TableTwos] ([Id], [Code], [FromDate], [TableOneId], [ToDate])
VALUES (@p8, @p9, @p10, @p11, @p12);


-- SqlServer.2022
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


