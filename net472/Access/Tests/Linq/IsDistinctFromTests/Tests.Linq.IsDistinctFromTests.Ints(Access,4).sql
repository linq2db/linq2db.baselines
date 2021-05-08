BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Src]
(
	[Int]            Int           NOT NULL,
	[NullableInt]    Int               NULL,
	[String]         NVarChar(255)     NULL,
	[NullableString] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = 2
DECLARE @String VarWChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString VarWChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 3
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = NULL
DECLARE @String VarWChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString VarWChar -- String
SET     @NullableString = NULL

INSERT INTO [Src]
(
	[Int],
	[NullableInt],
	[String],
	[NullableString]
)
VALUES
(
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- Access AccessOleDb
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 4
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[Int] = @value_1 OR [s].[Int] IS NULL AND @value_2 IS NULL, 0, 1) = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 4
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[NullableInt] = @value_1 OR [s].[NullableInt] IS NULL AND @value_2 IS NULL, 0, 1) = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 4
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[Int] = @value_1 OR [s].[Int] IS NULL AND @value_2 IS NULL, 0, 1) = 0

BeforeExecute
-- Access AccessOleDb
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 4
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	[Src] [s]
WHERE
	IIF([s].[NullableInt] = @value_1 OR [s].[NullableInt] IS NULL AND @value_2 IS NULL, 0, 1) = 0

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Src]

