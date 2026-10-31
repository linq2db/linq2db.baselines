-- SqlServer.2022
DELETE [t1]
FROM
	[Issue6181TableTwos] [t1]



-- SqlServer.2022
DELETE [t1]
FROM
	[Issue6181TableOnes] [t1]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (DbType = DateTime2), @p3='?' (DbType = DateTime2), @p4='?' (Size = 4000), @p5='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue6181TableOnes] ([Id], [ChainedOn], [CreatedOn], [FromDate], [Name], [ToDate])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (Size = 4000), @p3='?' (DbType = DateTime2), @p4='?' (DbType = DateTime2), @p5='?' (DbType = DateTime2), @p6='?' (DbType = DateTime2), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime2), @p9='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue6181TableTwos] ([Id], [ChainedDate], [Code], [FromDate], [HeldDate], [OtherDate], [OverriddenDate], [TableOneId], [ToDate], [TypedOverriddenDate])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (Size = 4000), @p3='?' (DbType = DateTime2), @p4='?' (DbType = DateTime2), @p5='?' (DbType = DateTime2), @p6='?' (DbType = DateTime2), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime2), @p9='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue6181TableTwos] ([Id], [ChainedDate], [Code], [FromDate], [HeldDate], [OtherDate], [OverriddenDate], [TableOneId], [ToDate], [TypedOverriddenDate])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9);


-- SqlServer.2022
SELECT
	[r].[Code]
FROM
	[Issue6181TableTwos] [r]
ORDER BY
	[r].[Id]



