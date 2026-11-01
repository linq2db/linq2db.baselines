-- SqlServer.2019
DELETE [t1]
FROM
	[Issue6181TableTwos] [t1]



-- SqlServer.2019
DELETE [t1]
FROM
	[Issue6181TableOnes] [t1]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (DbType = DateTime2), @p3='?' (DbType = DateTime2), @p4='?' (Size = 4000), @p5='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue6181TableOnes] ([Id], [ChainedOn], [CreatedOn], [FromDate], [Name], [ToDate])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (DbType = DateTime2), @p3='?' (Size = 4000), @p4='?' (DbType = DateTime2), @p5='?' (DbType = DateTime2), @p6='?' (DbType = DateTime2), @p7='?' (DbType = DateTime2), @p8='?' (DbType = DateTime2), @p9='?' (DbType = DateTime2), @p10='?' (DbType = Int32), @p11='?' (DbType = DateTime2), @p12='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue6181TableTwos] ([Id], [CastDate], [ChainedDate], [Code], [CountedDate], [FromDate], [GatedDate], [HeldDate], [OtherDate], [OverriddenDate], [TableOneId], [ToDate], [TypedOverriddenDate])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12);


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (DbType = DateTime2), @p3='?' (Size = 4000), @p4='?' (DbType = DateTime2), @p5='?' (DbType = DateTime2), @p6='?' (DbType = DateTime2), @p7='?' (DbType = DateTime2), @p8='?' (DbType = DateTime2), @p9='?' (DbType = DateTime2), @p10='?' (DbType = Int32), @p11='?' (DbType = DateTime2), @p12='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue6181TableTwos] ([Id], [CastDate], [ChainedDate], [Code], [CountedDate], [FromDate], [GatedDate], [HeldDate], [OtherDate], [OverriddenDate], [TableOneId], [ToDate], [TypedOverriddenDate])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12);


-- SqlServer.2019
SELECT
	[r].[Code]
FROM
	[Issue6181TableTwos] [r]
ORDER BY
	[r].[Id]



