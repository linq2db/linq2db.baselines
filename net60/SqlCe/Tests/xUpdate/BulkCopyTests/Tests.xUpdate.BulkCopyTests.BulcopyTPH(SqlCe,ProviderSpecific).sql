BeforeExecute
-- SqlCe

CREATE TABLE [TPHTable]
(
	[Id]            Int          NOT NULL,
	[Discriminator] Int          NOT NULL,
	[Value1]        NVarChar(50)     NULL,
	[Value2]        NVarChar(50)     NULL,
	[NullableBool]  NVarChar(1)      NULL,
	[Value3]        NVarChar(50)     NULL,

	CONSTRAINT [PK_TPHTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [TPHTable]
(
	[Id],
	[Discriminator],
	[Value1],
	[Value2],
	[NullableBool],
	[Value3]
)
SELECT 1,1,'Str1',NULL,NULL,NULL UNION ALL
SELECT 2,2,NULL,'Str2',NULL,NULL UNION ALL
SELECT 3,3,NULL,NULL,'Y','Str3'

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Discriminator],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[NullableBool],
	[t1].[Value3]
FROM
	[TPHTable] [t1]

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 2

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Discriminator] = 3

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value1] = 'Str1'

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value2] = 'Str2'

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[x].[Id],
	[x].[Discriminator],
	[x].[Value1],
	[x].[Value2],
	[x].[NullableBool],
	[x].[Value3]
FROM
	[TPHTable] [x]
WHERE
	[x].[Value3] = 'Str3'

BeforeExecute
-- SqlCe

DROP TABLE [TPHTable]

