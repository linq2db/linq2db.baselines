BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA WChar -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB WChar -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar -- AnsiString
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA WChar -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB WChar(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar(9) -- AnsiString
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 110
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA WChar(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB WChar -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar -- AnsiString
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 111
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA WChar(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB WChar(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- AnsiString
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 112
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = 2
DECLARE @EnumA WChar(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB WChar(1) -- StringFixedLength
SET     @EnumB = 'B'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- AnsiString
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 121
DECLARE @A Integer -- Int32
SET     @A = 2
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA WChar(1) -- StringFixedLength
SET     @EnumA = 'B'
DECLARE @EnumB WChar(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___Two___'
DECLARE @CEnumB VarChar(9) -- AnsiString
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
-- Access AccessOleDb

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	([x].[A] <= [x].[B] OR [x].[A] IS NULL OR [x].[B] IS NULL)
ORDER BY
	[x].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

