BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @A Int -- Int32
SET     @A = NULL
DECLARE @B Int -- Int32
SET     @B = NULL
DECLARE @EnumA NChar -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB NChar -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar(20) -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar(20) -- AnsiString
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
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @A Int -- Int32
SET     @A = NULL
DECLARE @B Int -- Int32
SET     @B = 1
DECLARE @EnumA NChar -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = N'A'
DECLARE @CEnumA VarChar(20) -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar(20) -- AnsiString
SET     @CEnumB = N'___One___'

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
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 110
DECLARE @A Int -- Int32
SET     @A = 1
DECLARE @B Int -- Int32
SET     @B = NULL
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = N'A'
DECLARE @EnumB NChar -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar(20) -- AnsiString
SET     @CEnumA = N'___One___'
DECLARE @CEnumB VarChar(20) -- AnsiString
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
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 111
DECLARE @A Int -- Int32
SET     @A = 1
DECLARE @B Int -- Int32
SET     @B = 1
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = N'A'
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = N'A'
DECLARE @CEnumA VarChar(20) -- AnsiString
SET     @CEnumA = N'___One___'
DECLARE @CEnumB VarChar(20) -- AnsiString
SET     @CEnumB = N'___One___'

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
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 112
DECLARE @A Int -- Int32
SET     @A = 1
DECLARE @B Int -- Int32
SET     @B = 2
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = N'A'
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = N'B'
DECLARE @CEnumA VarChar(20) -- AnsiString
SET     @CEnumA = N'___One___'
DECLARE @CEnumB VarChar(20) -- AnsiString
SET     @CEnumB = N'___Two___'

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
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 121
DECLARE @A Int -- Int32
SET     @A = 2
DECLARE @B Int -- Int32
SET     @B = 1
DECLARE @EnumA NChar(1) -- StringFixedLength
SET     @EnumA = N'B'
DECLARE @EnumB NChar(1) -- StringFixedLength
SET     @EnumB = N'A'
DECLARE @CEnumA VarChar(20) -- AnsiString
SET     @CEnumA = N'___Two___'
DECLARE @CEnumB VarChar(20) -- AnsiString
SET     @CEnumB = N'___One___'

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
-- SqlServer.SA SqlServer.2019

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[CEnumA] <> [x].[CEnumB]
ORDER BY
	[x].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Src]

