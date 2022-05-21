BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]     Int          NOT NULL,
		[A]      Int              NULL,
		[B]      Int              NULL,
		[EnumA]  NChar(1)         NULL,
		[EnumB]  NChar(1)         NULL,
		[CEnumA] VarChar(Max)     NULL,
		[CEnumB] VarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Src]
(
	[Id],
	[A],
	[B],
	[EnumA],
	[EnumB],
	[CEnumA],
	[CEnumB]
)
VALUES
(100,NULL,NULL,NULL,NULL,NULL,NULL),
(101,NULL,1,NULL,N'A',NULL,'___One___'),
(110,1,NULL,N'A',NULL,'___One___',NULL),
(111,1,1,N'A',N'A','___One___','___One___'),
(112,1,2,N'A',N'B','___One___','___Two___'),
(121,2,1,N'B',N'A','___Two___','___One___')

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	([x].[A] = [x].[B] OR [x].[A] IS NULL AND [x].[B] IS NULL)
ORDER BY
	[x].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Src]

