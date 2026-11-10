-- SqlServer.2017
DELETE [t1]
FROM
	[Issue6181TableTwos] [t1]



-- SqlServer.2017
DELETE [t1]
FROM
	[Issue6181TableOnes] [t1]



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime2), @p2='?' (DbType = DateTime2), @p3='?' (DbType = DateTime2), @p4='?' (Size = 4000), @p5='?' (DbType = DateTime2), @p6='?' (DbType = Int32), @p7='?' (DbType = DateTime2), @p8='?' (DbType = DateTime2), @p9='?' (DbType = DateTime2), @p10='?' (Size = 4000), @p11='?' (DbType = DateTime2), @p12='?' (DbType = DateTime2), @p13='?' (DbType = DateTime2), @p14='?' (DbType = DateTime2), @p15='?' (DbType = DateTime2), @p16='?' (DbType = DateTime2), @p17='?' (DbType = Int32), @p18='?' (DbType = DateTime2), @p19='?' (DbType = DateTime2), @p20='?' (DbType = Int32), @p21='?' (DbType = DateTime2), @p22='?' (DbType = DateTime2), @p23='?' (DbType = DateTime2), @p24='?' (Size = 4000), @p25='?' (DbType = DateTime2), @p26='?' (DbType = DateTime2), @p27='?' (DbType = DateTime2), @p28='?' (DbType = DateTime2), @p29='?' (DbType = DateTime2), @p30='?' (DbType = DateTime2), @p31='?' (DbType = Int32), @p32='?' (DbType = DateTime2), @p33='?' (DbType = DateTime2)

SET NOCOUNT ON;
INSERT INTO [Issue6181TableOnes] ([Id], [ChainedOn], [CreatedOn], [FromDate], [Name], [ToDate])
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);
INSERT INTO [Issue6181TableTwos] ([Id], [CastDate], [ChainedDate], [ClockDate], [Code], [CountedDate], [FromDate], [GatedDate], [HeldDate], [OtherDate], [OverriddenDate], [TableOneId], [ToDate], [TypedOverriddenDate])
VALUES (@p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14, @p15, @p16, @p17, @p18, @p19),
(@p20, @p21, @p22, @p23, @p24, @p25, @p26, @p27, @p28, @p29, @p30, @p31, @p32, @p33);


