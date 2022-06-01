BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Id]     Int          NOT NULL,
	[A]      Int              NULL,
	[B]      Int              NULL,
	[EnumA]  NChar(1)         NULL,
	[EnumB]  NChar(1)         NULL,
	[CEnumA] NVarChar(20)     NULL,
	[CEnumB] NVarChar(20)     NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[CEnumA] <> [x].[CEnumB]
ORDER BY
	[x].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Src]

