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
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @A Int -- Int32
SET     @A = NULL
DECLARE @B Int -- Int32
SET     @B = NULL
DECLARE @EnumA NVarChar -- String
SET     @EnumA = NULL
DECLARE @EnumB NVarChar -- String
SET     @EnumB = NULL
DECLARE @CEnumA NVarChar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB NVarChar -- String
SET     @CEnumB = NULL

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
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @A Int -- Int32
SET     @A = NULL
DECLARE @B Int -- Int32
SET     @B = 1
DECLARE @EnumA NVarChar -- String
SET     @EnumA = NULL
DECLARE @EnumB NVarChar(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA NVarChar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB NVarChar(9) -- String
SET     @CEnumB = '___One___'

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
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 110
DECLARE @A Int -- Int32
SET     @A = 1
DECLARE @B Int -- Int32
SET     @B = NULL
DECLARE @EnumA NVarChar(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB NVarChar -- String
SET     @EnumB = NULL
DECLARE @CEnumA NVarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB NVarChar -- String
SET     @CEnumB = NULL

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
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 111
DECLARE @A Int -- Int32
SET     @A = 1
DECLARE @B Int -- Int32
SET     @B = 1
DECLARE @EnumA NVarChar(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB NVarChar(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA NVarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB NVarChar(9) -- String
SET     @CEnumB = '___One___'

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
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 112
DECLARE @A Int -- Int32
SET     @A = 1
DECLARE @B Int -- Int32
SET     @B = 2
DECLARE @EnumA NVarChar(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB NVarChar(1) -- String
SET     @EnumB = 'B'
DECLARE @CEnumA NVarChar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB NVarChar(9) -- String
SET     @CEnumB = '___Two___'

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
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 121
DECLARE @A Int -- Int32
SET     @A = 2
DECLARE @B Int -- Int32
SET     @B = 1
DECLARE @EnumA NVarChar(1) -- String
SET     @EnumA = 'B'
DECLARE @EnumB NVarChar(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA NVarChar(9) -- String
SET     @CEnumA = '___Two___'
DECLARE @CEnumB NVarChar(9) -- String
SET     @CEnumB = '___One___'

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
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- SqlCe

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	([x].[CEnumA] <= [x].[CEnumB] OR [x].[CEnumA] IS NULL OR [x].[CEnumB] IS NULL)
ORDER BY
	[x].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Src]

