BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NULL)
	CREATE TABLE [Src]
	(
		[Id]     Int         NOT NULL,
		[A]      Int             NULL,
		[B]      Int             NULL,
		[EnumA]  NChar(1)        NULL,
		[EnumB]  NChar(1)        NULL,
		[CEnumA] VarChar(20)     NULL,
		[CEnumB] VarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
SELECT 100,NULL,NULL,NULL,NULL,NULL,NULL UNION ALL
SELECT 101,NULL,1,NULL,N'A',NULL,'___One___' UNION ALL
SELECT 110,1,NULL,N'A',NULL,'___One___',NULL UNION ALL
SELECT 111,1,1,N'A',N'A','___One___','___One___' UNION ALL
SELECT 112,1,2,N'A',N'B','___One___','___Two___' UNION ALL
SELECT 121,2,1,N'B',N'A','___Two___','___One___'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	([x].[CEnumA] >= [x].[CEnumB] OR [x].[CEnumA] IS NULL OR [x].[CEnumB] IS NULL)
ORDER BY
	[x].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Src]', N'U') IS NOT NULL)
	DROP TABLE [Src]

