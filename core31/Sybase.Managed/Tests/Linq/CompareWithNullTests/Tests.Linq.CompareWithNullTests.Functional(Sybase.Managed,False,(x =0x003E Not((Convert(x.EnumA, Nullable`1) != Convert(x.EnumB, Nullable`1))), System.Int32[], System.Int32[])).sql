BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NULL)
	EXECUTE('
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
	')

BeforeExecute
-- Sybase.Managed Sybase

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
SELECT 101,NULL,1,NULL,'A',NULL,'___One___' UNION ALL
SELECT 110,1,NULL,'A',NULL,'___One___',NULL UNION ALL
SELECT 111,1,1,'A','A','___One___','___One___' UNION ALL
SELECT 112,1,2,'A','B','___One___','___Two___' UNION ALL
SELECT 121,2,1,'B','A','___Two___','___One___'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[EnumA] = [x].[EnumB]
ORDER BY
	[x].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Src') IS NOT NULL)
	DROP TABLE [Src]

