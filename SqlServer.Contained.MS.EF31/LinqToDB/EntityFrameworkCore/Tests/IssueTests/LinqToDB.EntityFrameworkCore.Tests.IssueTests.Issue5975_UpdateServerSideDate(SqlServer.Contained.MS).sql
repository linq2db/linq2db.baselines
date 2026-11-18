-- SqlServer.2025
DELETE [t1]
FROM
	[Issue5975TableTwos] [t1]



-- SqlServer.2025
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


-- SqlServer.2025
DECLARE @test DateTime2
SET     @test = DATETIME2FROMPARTS(2026, 6, 6, 2, 1, 1, 0, 7)

UPDATE
	[Issue5975TableOnes]
SET
	[FromDate] = IIF([Issue5975TableOnes].[FromDate] IS NOT NULL, @test, SYSUTCDATETIME())



SELECT [i].[Id], [i].[FromDate], [i].[Name], [i].[ToDate]
FROM [Issue5975TableOnes] AS [i]
ORDER BY [i].[Id]


