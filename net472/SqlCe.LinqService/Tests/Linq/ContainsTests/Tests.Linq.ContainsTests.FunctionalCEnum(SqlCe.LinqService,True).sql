﻿BeforeExecute
-- SqlCe

DROP TABLE [Src]

BeforeExecute
-- SqlCe

CREATE TABLE [Src]
(
	[Id]    Int          NOT NULL,
	[Int]   Int              NULL,
	[Enum]  NVarChar(5)      NULL,
	[CEnum] NVarChar(20)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int Int -- Int32
SET     @Int = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL
DECLARE @CEnum NVarChar -- String
SET     @CEnum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	@Id,
	@Int,
	@Enum,
	@CEnum
)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 NVarChar(12) -- String
SET     @CEnum_1 = '___Value4___'

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] IN (@CEnum) OR [s].[CEnum] IS NULL)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 NVarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@CEnum, @CEnum_1)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value2___'

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@CEnum) AND [s].[CEnum] IS NOT NULL)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @CEnum NVarChar(12) -- String
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 NVarChar(12) -- String
SET     @CEnum_1 = '___Value2___'

SELECT TOP (@take)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (@CEnum, @CEnum_1) OR [s].[CEnum] IS NULL)

BeforeExecute
-- SqlCe

DROP TABLE [Src]

